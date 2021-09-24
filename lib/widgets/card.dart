import 'package:flutter/material.dart';
import 'package:ecommerce/values/values.dart';

class CardDesign extends StatelessWidget {
  // const CardDesign({Key? key}) : super(key: key);

  late final String title;
  late final BoxDecoration decoration;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Opacity(
        opacity: 0.8,
        child: Container(
          height: Sizes.HEIGHT_16,
          width: Sizes.WIDTH_40,
          decoration: decoration,
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: Sizes.TEXT_SIZE_10),
            ),
          ),
        ),
      ),
    );
  }
}
