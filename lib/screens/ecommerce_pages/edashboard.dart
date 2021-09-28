// import 'package:ecommerce/values/imagepath.dart';
import 'package:ecommerce/animations/RotationalAnimation.dart';
import 'package:ecommerce/animations/ScaleAnimation.dart';
import 'package:ecommerce/screens/ecommerce_pages/category_screen.dart';
import 'package:ecommerce/screens/login.dart';
import 'package:ecommerce/values/values.dart';
import 'package:ecommerce/widgets/BottomBarNavWidget.dart';
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
    Widget _imageList = Padding(
      padding: EdgeInsets.only(left: Sizes.SIZE_12, right: Sizes.SIZE_12),
      child: Container(
      height: Sizes.HEIGHT_200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage(ImagesPath.bakImage),
          AssetImage(ImagesPath.vegImage),
          AssetImage(ImagesPath.foodImage),
          AssetImage(ImagesPath.tomatoImg),
          AssetImage(ImagesPath.oninonImg),
          AssetImage(ImagesPath.houseImg),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 3000),
        dotSize: Sizes.SIZE_4,
        dotSpacing: Sizes.SIZE_16,
        dotColor: Colors.redAccent,
        indicatorBgPadding: Sizes.SIZE_8,
        dotBgColor: Colors.transparent,
        borderRadius: true,
        radius: Radius.circular(Sizes.RADIUS_20),
          noRadiusForIndicator: true,
        ),
    ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 10.1,
        backgroundColor: Colors.black,
        title: const Text('Flipkart'),
        iconTheme: IconThemeData(color: Colors.green),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, 'categorylist');
              Navigator.push(context, ScaleAnimation(CategoryListPage()));
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
              child: Text(StringConst.APP_NAME,
                  style: TextStyle(color: Colors.white)),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImagesPath.registerImage),
                      fit: BoxFit.fill)),
            ),
            const InkWell(
              child: ListTile(
                title: Text('Home',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                leading: Icon(Icons.home),
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
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  leading: Icon(Icons.person)),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const InkWell(
              child: ListTile(
                title: Text(StringConst.CATEGORY,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                leading: Icon(Icons.person),
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
                          fontSize: 16,
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
                        fontSize: 16,
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
                        fontSize: 16,
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
      bottomNavigationBar: BottomBarNavWidget(),
    );
  }
}

Widget _categoryList(BuildContext context) {
  return InkWell(
      onTap: () {
        Navigator.push(context, ScaleAnimation(CategoryListPage()));
      },
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
      onTap: () {
        Navigator.push(context, ScaleAnimation(CategoryListPage()));
      },
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
            height: 10.0,
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
