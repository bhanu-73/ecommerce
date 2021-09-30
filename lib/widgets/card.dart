import 'package:flutter/material.dart';
import 'package:ecommerce/values/values.dart';

class CardDesign extends StatelessWidget {
  final String title;
  final BoxDecoration decoration;
  final GestureTapCallback onTap;

  CardDesign(this.title, this.decoration, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Opacity(
        opacity: 0.8,
        child: Container(
          height: Sizes.HEIGHT_100,
          width: Sizes.WIDTH_100,
          decoration: decoration,
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: Sizes.TEXT_SIZE_10, color: AppColors.black),
            ),
          ),
        ),
      ),
    );
  }
}
