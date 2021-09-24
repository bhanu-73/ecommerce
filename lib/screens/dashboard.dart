import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// stateful - dynamic data
// statelesswidget - static
class DashBoardPage extends StatelessWidget {
  // const DashBoardPage({Key? key}) : super(key: key);

  static final path = 'lib/screens/dashboard.dart';
  final TextStyle whiteText = TextStyle(color: Colors.white);
  final TextStyle blackText = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('DashBoard'),
        centerTitle: true,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          _buildHeader(),
          SizedBox(
            height: 50.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 120.0,
                        color: Colors.blueAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                '2560',
                                style: whiteText.copyWith(fontSize: 24.0),
                              ),
                              trailing:
                                  Icon(Icons.access_alarm, color: Colors.white),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text('Steps', style: whiteText),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                        height: 120.0,
                        color: Colors.blueAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                '80 bpm',
                                style: whiteText.copyWith(fontSize: 24.0),
                              ),
                              trailing: Icon(FontAwesomeIcons.hospital,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text('Heart Rate', style: whiteText),
                            ),
                          ],
                        ))
                  ],
                ),
              )
            ],
          )
        ]));
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
              value: 0.8,
              backgroundColor: Colors.grey.shade500,
            )),
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
            child: Column(
          children: <Widget>[
            Text(
              'Your Daily Progress',
              style: blackText.copyWith(fontSize: 20.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              '80% to go',
              style: blackText.copyWith(fontSize: 16.0),
            ),
          ],
        )),
      ],
    );
  }
}
