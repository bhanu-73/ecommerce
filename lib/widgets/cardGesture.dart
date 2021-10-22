import 'dart:math';

import 'package:flutter/material.dart';

class CardGestureWidget extends StatefulWidget {
  const CardGestureWidget({Key? key}) : super(key: key);

  @override
  _CardGestureWidgetState createState() => _CardGestureWidgetState();
}

class _CardGestureWidgetState extends State<CardGestureWidget> {
  // Scales
  double _baseScaleFactor = 0.5;
  double _scaleFactor = 0.5;
  Color bgColor = Colors.yellow;
  bool makeCircular = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        setState(() {
          bgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
        });
      },
      onLongPress: () {
        setState(() {
          makeCircular = !makeCircular;
        });
      },
      // Pinch in and out
      onScaleStart: (details) {
        _baseScaleFactor = _scaleFactor;
      },

      // update the scale
      onScaleUpdate: (details) {
        setState(() {
          _scaleFactor = _baseScaleFactor * details.scale;
        });
      },
      onScaleEnd: (details) {
        // return to original state
        _scaleFactor = _baseScaleFactor;
      },
      child: Transform.scale(
        scale: _scaleFactor,
        child: Card(
          shape: makeCircular
              ? const CircleBorder()
              : const RoundedRectangleBorder(),
          child: const SizedBox(
            height: 300.0,
            width: 300.0,
          ),
          color: bgColor,
        ),
      ),
    );
  }
}
