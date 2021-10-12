import 'package:ecommerce/animations/RotationalAnimation.dart';
import 'package:ecommerce/animations/ScaleAnimation.dart';
import 'package:ecommerce/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:ecommerce/values/values.dart';

// API Access suing Future and URI
Future<CovidData> fetchCovidDetails() async {
  final response =
      await http.get(Uri.parse("http://192.168.181.8:8000/covidData.json"));

  if (response.statusCode == 200) {
    // parse JSON or conver the JSON data
    return CovidData.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("No data Available...");
  }
}

// Creating a Model to Load Data
class CovidData {
  late final int date;
  late final int positive;
  late final int totalTestResults;
  late final int hospitalizedCurrently;
  late final int hospitalizedCumulative;
  late final int death;
  late final int hospitalized;
  late final int posNeg;

  CovidData(
      {required this.date,
      required this.positive,
      required this.totalTestResults,
      required this.hospitalizedCurrently,
      required this.hospitalizedCumulative,
      required this.death,
      required this.hospitalized,
      required this.posNeg});

  factory CovidData.fromJson(List<dynamic> data) {
    return CovidData(
        date: data[50]["date"],
        positive: data[50]["positive"],
        totalTestResults: data[50]["totalTestResults"],
        hospitalizedCurrently: data[50]["hospitalizedCurrently"],
        hospitalizedCumulative: data[50]["hospitalizedCumulative"],
        death: data[50]["death"],
        hospitalized: data[50]["hospitalized"],
        posNeg: data[50]["posNeg"]);
  }
}

class FetchCovidAPI extends StatefulWidget {
  const FetchCovidAPI({Key? key}) : super(key: key);

  @override
  _FetchCovidAPIState createState() => _FetchCovidAPIState();
}

class _FetchCovidAPIState extends State<FetchCovidAPI> {
  late Future<CovidData> result;

  @override
  void initState() {
    super.initState();
    result = fetchCovidDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10.1,
          backgroundColor: Colors.grey,
          title: const Text('Flipkart'),
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, 'categorylist');
                Navigator.push(context, ScaleAnimation(LoginPage()));
              },
              icon: Icon(Icons.search_rounded, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, RotationalAnimation(LoginPage()));
              },
              icon: Icon(Icons.shopping_basket, color: Colors.white),
            ),
          ],
        ),
        body: Center(
          child: FutureBuilder<CovidData>(
              future: result,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.date.toString() +
                      ' ' +
                      snapshot.data!.totalTestResults.toString());
                } else if (snapshot.hasError) {
                  return Text('Error loading data...');
                }
                return const CircularProgressIndicator(
                  backgroundColor: AppColors.green,
                );
              }),
        ));
  }
}

// Models, Future API - URI/URL
