import 'package:flutter/material.dart';

final TextStyle whiteText = TextStyle(color: Colors.white);

class EcommerceDashBoard extends StatelessWidget {
  const EcommerceDashBoard({Key? key}) : super(key: key);

  static final path = 'lib/screens/ecommerce_pages/edashboard.dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent.shade100,
        appBar: AppBar(
          title: Text('Flipkart'),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, left: 16.0, right: 16.0, bottom: 10.0),
                child: Text(
                  'Categories',
                  style: TextStyle(color: Colors.black),
                )),
            Container(
                height: 120,
                width: double.infinity,
                margin: EdgeInsets.only(top: 16.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return _categoryList(context);
                  },
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, left: 16.0, right: 16.0, bottom: 10.0),
                child: Text(
                  'Featured Products',
                  style: TextStyle(color: Colors.black),
                )),
            Container(
                height: 120,
                width: double.infinity,
                margin: EdgeInsets.only(top: 16.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return _featuredList(context);
                  },
                ))
          ],
        ));
  }

  Widget _categoryList(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                  image: DecorationImage(
                      image: AssetImage('assets/login.png'),
                      fit: BoxFit.cover)),
              alignment: Alignment.center,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Fruits')
          ],
        ));
  }

  Widget _featuredList(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                  image: DecorationImage(
                      image: AssetImage('assets/register.png'),
                      fit: BoxFit.cover)),
              alignment: Alignment.center,
              width: 100,
              height: 140,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Fruits')
          ],
        ));
  }
}
