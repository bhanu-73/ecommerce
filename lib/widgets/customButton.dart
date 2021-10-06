import 'package:flutter/material.dart';
import 'package:ecommerce/values/values.dart';

class CustomButton extends StatefulWidget {
  String label;
  double height;
  double width;
  Color color;
  Function onTap;
  //Widget onPress;
  String pageName;
  Widget prefixIcon;
  double iconSpace;

  CustomButton(this.label, this.height, this.width, this.color, this.prefixIcon,
      this.onTap, this.pageName, this.iconSpace);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, widget.pageName);
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        color: widget.color,
        padding: EdgeInsets.all(Sizes.PADDING_16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.prefixIcon,
            SizedBox(
              width: widget.iconSpace,
            ),
            Text(
              widget.label,
              style: TextStyle(
                  fontSize: Sizes.TEXT_SIZE_18,
                  color: Colors.white,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
