import 'package:ecommerce/values/values.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ProductDetailsSlider extends StatelessWidget {
  String productSlider1;
  String productSlider2;
  String productSlider3;
  ProductDetailsSlider(
      {Key? key,
      required this.productSlider1,
      required this.productSlider2,
      required this.productSlider3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: Sizes.SIZE_12, right: Sizes.SIZE_12),
        child: Container(
          height: Sizes.HEIGHT_200,
          child: Carousel(
            boxFit: BoxFit.fill,
            images: [
              // AssetImage(ImagesPath.bakImage),
              // AssetImage(ImagesPath.vegImage),
              // AssetImage(ImagesPath.foodImage),
              // AssetImage(ImagesPath.tomatoImg),
              // AssetImage(ImagesPath.oninonImg),
              // AssetImage(ImagesPath.houseImg),
              Image.asset(productSlider1),
              Image.asset(productSlider2),
              Image.asset(productSlider3),
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
        ));
  }
}
