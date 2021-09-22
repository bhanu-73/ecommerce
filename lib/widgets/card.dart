import 'package:flutter/material.dart';

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
          height: 16,
          width: 40,
          decoration: decoration,
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
