import 'package:ecommerce/animations/ScaleAnimation.dart';
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
                    //
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
                  ProductTitleWidget(
                      productName: "Apple iPhone 12 Mini",
                      productPrice: "INR 96960",
                      productHost: "Poorvika Mobiles",
                      productDesc:
                          "12 mini takes more than 12 billion transistors to run whatever you throw at it"),
                  SpaceHeight16(),
                ],
              )),
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
        )
      ],
    );
  }
}
