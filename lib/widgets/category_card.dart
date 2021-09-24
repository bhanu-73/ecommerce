import 'package:flutter/material.dart';
import 'package:ecommerce/values/values.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCardDesign extends StatelessWidget {
  // height, width, border-radius, image, opacity, gradient,
  late final double width;
  late final double height;
  late final double borderRadius;
  late final double opacity;
  late final String imagePath;
  final TextStyle catTextStyle;
  late final String category;
  late final Color handleColor;
  late final bool hashandle;
  final GestureTapCallback onTap;

  CategoryCardDesign(
      {this.width = Sizes.WIDTH_100,
      this.height = Sizes.HEIGHT_100,
      this.borderRadius = Sizes.RADIUS_8,
      this.opacity = 0.75,
      this.imagePath = 'assets/register.png',
      this.category = 'Electronics',
      this.hashandle = false,
      this.handleColor = AppColors.whiteShade_50,
      required this.onTap,
      this.catTextStyle = Styles.titleTextStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        //    onTap: onTap,
        child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius)),
            child: Stack(
              children: <Widget>[
                // Positioned
                Positioned(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(borderRadius),
                      child: Image.asset(imagePath,
                          width: width, height: height, fit: BoxFit.cover)),
                ),
                Positioned(
                    child: Opacity(
                        opacity: opacity,
                        child: Container(
                            height: height,
                            width: width,
                            decoration: BoxDecoration(
                              //                         gradient: gradient,
                              borderRadius: BorderRadius.circular(borderRadius),
                            )))),
                Positioned(
                  top: hashandle ? Sizes.SIZE_36 : (height / 2) - 4,
                  right: hashandle ? Sizes.SIZE_24 : width / 4,
                  left: hashandle ? Sizes.SIZE_8 : width / 4,
                  child: hashandle
                      ? Row(
                          children: <Widget>[
                            Spacer(flex: 1),
                            Text(category,
                                textAlign: TextAlign.center,
                                style: catTextStyle),
                          ],
                        )
                      : Text(category,
                          textAlign: TextAlign.center, style: catTextStyle),
                )
              ],
            )));
  }
}
