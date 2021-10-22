import 'package:flutter/material.dart';

class FavotireIconWidget extends StatefulWidget {
  const FavotireIconWidget({Key? key}) : super(key: key);

  @override
  _FavotireIconWidgetState createState() => _FavotireIconWidgetState();
}

class _FavotireIconWidgetState extends State<FavotireIconWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Icon(isSelected ? Icons.favorite : Icons.favorite_border,
          size: 36.0, color: isSelected ? Colors.red : Colors.black),
    );
  }
}
