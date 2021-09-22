import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

final TextStyle whiteText = TextStyle(color: Colors.white);

class EcommerceDashBoard extends StatefulWidget {
  const EcommerceDashBoard({Key? key}) : super(key: key);

  static final path = 'lib/screens/ecommerce_pages/edashboard.dart';

  @override
  State<EcommerceDashBoard> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<EcommerceDashBoard> {
  @override
  Widget build(BuildContext context) {
    Widget _imageList = Container(
      height: 220,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/Bakery.png'),
          AssetImage('assets/Vegetables.png'),
          AssetImage('assets/Foodgrains.png'),
          AssetImage('assets/tomato.png'),
          AssetImage('assets/onion.png'),
          AssetImage('assets/Household.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 3000),
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.redAccent,
        indicatorBgPadding: 8.0,
        dotBgColor: Colors.transparent,
        borderRadius: true,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 10.1,
        backgroundColor: Colors.redAccent,
        title: const Text('Flipkart'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_basket, color: Colors.white),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // UserAccountsDrawerHeader(
            //   accountName: Text('Default User'),
            //   accountEmail: Text('customer@gmail.com'),
            //   currentAccountPicture: GestureDetector(
            //     child: CircleAvatar(
            //         backgroundColor: Colors.white,
            //         // child: Icon(Icons.person, color: Colors.redAccent),
            //         backgroundImage: AssetImage('assets/capsicum.jpg'),
            //         maxRadius: 75,
            //         minRadius: 50),
            //   ),
            // ),
            DrawerHeader(
              child: Text('Flipkart', style: TextStyle(color: Colors.white)),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/register.png'),
                      fit: BoxFit.fill)),
            ),
            const InkWell(
              child: ListTile(
                title: Text('Home',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400)),
                leading: Icon(Icons.home),
                // onTap: () {
                //   Navigator.pushNamed(context, 'login');
                // }
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const InkWell(
              child: ListTile(
                  title: Text('Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                  leading: Icon(Icons.person)),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const InkWell(
              child: ListTile(
                  title: Text('Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                  leading: Icon(Icons.person)),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const InkWell(
              child: ListTile(
                  title: Text('Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                  leading: Icon(Icons.person)),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const InkWell(
              child: ListTile(
                title: Text('Settings',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400)),
                leading: Icon(Icons.settings),
              ),
            ),
            Divider(thickness: 5.0, color: Colors.redAccent),
            const SizedBox(
              height: 10.0,
            ),
            InkWell(
              child: ListTile(
                title: Text('Version 2.0.33',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          _imageList,
          Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
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
              height: 140,
              width: double.infinity,
              margin: EdgeInsets.only(top: 16.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return _featuredList(context);
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
                  return _houseHoldList(context);
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
                  return _bakkeryList(context);
                },
              ))
        ],
      ),
    );
  }
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
                    image: AssetImage('assets/capsicum.jpg'),
                    fit: BoxFit.cover)),
            alignment: Alignment.center,
            width: 100,
            height: 80,
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
                    image: AssetImage('assets/Vegetables.png'),
                    fit: BoxFit.cover)),
            alignment: Alignment.center,
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Vegetables')
        ],
      ));
}

Widget _bakkeryList(BuildContext context) {
  return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
                image: DecorationImage(
                    image: AssetImage('assets/Bakery.png'), fit: BoxFit.cover)),
            alignment: Alignment.center,
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Cakes')
        ],
      ));
}

Widget _houseHoldList(BuildContext context) {
  return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
                image: DecorationImage(
                    image: AssetImage('assets/Household.png'),
                    fit: BoxFit.cover)),
            alignment: Alignment.center,
            width: 100,
            height: 80,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Cakes')
        ],
      ));
}
