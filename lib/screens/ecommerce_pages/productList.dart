import 'package:ecommerce/animations/ScaleAnimation.dart';
import 'package:ecommerce/screens/ecommerce_pages/productDetails.dart';
import 'package:ecommerce/widgets/BottomBarNavWidget.dart';
import 'package:ecommerce/widgets/card.dart';
import 'package:ecommerce/widgets/spaces.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/values/values.dart';

class ProductListPage extends StatefulWidget {
  // const ProductListPage({Key? key}) : super(key: key);

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(StringConst.PRODUCTS, style: Styles.customTextStyle),
        centerTitle: true,
        leading:
            InkWell(onTap: () => Navigator.pushNamed(context, 'edashboard')),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context, ScaleAnimation(ProductDetailsPage()));
            },
            icon: Icon(Icons.search_rounded, color: Colors.white),
          ),
        ],
      ),
      body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: Sizes.MARGIN_16, vertical: Sizes.MARGIN_16),
          child: ListView.separated(
            itemCount: 6,
            separatorBuilder: (context, index) {
              return SpaceHeight12();
            },
            itemBuilder: (context, index) {
              return Container(
                  child: CardDesign(
                      StringConst.ARABIAN,
                      BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.RADIUS_12),
                          image: DecorationImage(
                              image: AssetImage(ImagesPath.oninonImg))),
                      () => Navigator.push(
                          context, ScaleAnimation(ProductDetailsPage()))));
            },
          )),
      bottomNavigationBar: BottomBarNavWidget(),
    );
  }
}
