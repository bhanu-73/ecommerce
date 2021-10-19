import 'package:ecommerce/animations/ScaleAnimation.dart';
import 'package:ecommerce/screens/ecommerce_pages/cartPage.dart';
import 'package:ecommerce/widgets/BottomBarNavWidget.dart';
import 'package:ecommerce/widgets/SliderImages.dart';
import 'package:ecommerce/widgets/spaces.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/values/values.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFFFAFAFA),
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                FontAwesomeIcons.arrowCircleLeft,
                color: AppColors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            brightness: Brightness.light,
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    // SET THE NAVIGATION
                  },
                  icon: Icon(
                    Icons.business_center,
                    color: Color(0xFF3a3737),
                  ))
            ],
          ),
          body: Container(
              padding:
                  EdgeInsets.only(left: Sizes.SIZE_16, right: Sizes.SIZE_16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Card(
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(Sizes.SIZE_6)),
                  //     elevation: 1,
                  //     margin: EdgeInsets.all(Sizes.SIZE_6),
                  //     child: Image.asset(ImagesPath.vegImage),
                  //     semanticContainer: true,
                  //     clipBehavior: Clip.antiAlias,
                  //     borderOnForeground: true,
                  //     shadowColor: Colors.grey.shade300
                  // child: Image.asset('assets/images/' + 'electronics' + '.jpeg'),
                  //     )
                  ProductDetailsSlider(
                    productSlider1: ImagesPath.oninonImg,
                    productSlider2: ImagesPath.foodImage,
                    productSlider3: ImagesPath.bakImage,
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  ProductTitleWidget(
                      productName: "Apple iPhone 12 Mini",
                      productPrice: "INR 96960",
                      productHost: "Poorvika Mobiles",
                      productDesc:
                          "12 mini takes more than 12 billion transistors to run whatever you throw at it"),
                  SpaceHeight16(),
                  
                ],
              )),
          bottomNavigationBar: BottomBarNavWidget(),
        ));
  }
}

class ProductTitleWidget extends StatelessWidget {
  String productName;
  String productPrice;
  String productHost;
  String productDesc;

  ProductTitleWidget(
      {Key? key,
      required this.productName,
      required this.productPrice,
      required this.productHost,
      required this.productDesc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(productName,
                style: TextStyle(
                    fontSize: Sizes.TEXT_SIZE_20,
                    color: AppColors.headingText,
                    fontWeight: FontWeight.w600)),
            Text(productPrice,
                style: TextStyle(
                    fontSize: Sizes.TEXT_SIZE_20,
                    color: AppColors.headingText,
                    fontWeight: FontWeight.w600)),
          ],
        ),
        SpaceHeight8(),
        Row(
          children: <Widget>[
            Text("by ",
                style: TextStyle(
                    fontSize: Sizes.TEXT_SIZE_16,
                    color: AppColors.greyShade1,
                    fontWeight: FontWeight.w500)),
            Text(productHost,
                style: TextStyle(
                    fontSize: Sizes.TEXT_SIZE_16,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500)),
          ],
        ),
        SpaceHeight16(),
        ProductDetailContext(),
        SpaceHeight12(),
        PreferredSize(
          child: TabBar(
            labelColor: AppColors.black,
            indicatorColor: Color(0xFFfd2c2c),
            unselectedLabelColor: AppColors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontWeight: FontWeight.w500),
            tabs: [
              Tab(
                text: StringConst.PRODUCT_SPECS,
              ),
              Tab(
                text: StringConst.PRODUCT_DETAILS,
              )
            ],
          ),
          preferredSize: Size.fromHeight(50.0),
        ),
        Container(
          height: 110.0,
          child: TabBarView(
            children: [
              Container(
                color: Colors.white,
                child: ProductSpecs(),
              ),
              Container(
                color: Colors.white,
                child: ProductDetailContext(),
              )
            ],
          ),
        ),
        SpaceHeight16(),
        AddToCartMenu(),
      ],
    );
  }
}

class AddToCartMenu extends StatelessWidget {
  const AddToCartMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, ''),
              icon: Icon(FontAwesomeIcons.shoppingCart),
              color: AppColors.black,
              iconSize: Sizes.SIZE_36),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    ScaleAnimation(CartPage()));
              },
              child: Container(
                  height: Sizes.HEIGHT_48,
                  width: Sizes.WIDTH_200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.RADIUS_12),
                    color: Color(0xFFfd2c2c),
                    border:
                        Border.all(width: Sizes.WIDTH_1, color: Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      StringConst.ADD_TO_CART,
                      style: TextStyle(
                          fontSize: Sizes.TEXT_SIZE_20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ))),
          IconButton(
              onPressed: () => Navigator.pushNamed(context, ''),
              icon: Icon(Icons.add),
              color: AppColors.black,
              iconSize: Sizes.SIZE_36),
        ],
      ),
    );
  }
}

class ProductDetailContext extends StatelessWidget {
  const ProductDetailContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        // TextDesc
        'Apple iPhone is one of the best devices in the market in terms of performance, and the build quality of the device with exquisite design pattern where deisgned by Apple INc, and manufactured by Foxconn IN.',
        style: TextStyle(
            fontSize: Sizes.TEXT_SIZE_14,
            fontWeight: FontWeight.w300,
            height: 1.50,
            color: Colors.black54),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class ProductSpecs extends StatelessWidget {
  const ProductSpecs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        // TextDesc
        'Time Cook, CEO of Apple Inc. is one of the best devices in the market in terms of performance, and the build quality of the device with exquisite design pattern where deisgned by Apple INc, and manufactured by Foxconn IN.',
        style: TextStyle(
            fontSize: Sizes.TEXT_SIZE_14,
            fontWeight: FontWeight.w300,
            height: 1.50,
            color: Colors.black54),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
