import 'package:flutter/material.dart';

// PageRouteBuilder

class RotationalAnimation extends PageRouteBuilder {
  late final Widget page;

  RotationalAnimation(this.page)
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                page,
            transitionDuration: Duration(milliseconds: 1000),
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                ScaleTransition(
                  scale: Tween<double>(
                    begin: 0.0,
                    end: 1.0,
                  ).animate(
                    CurvedAnimation(
                        parent: animation, curve: Curves.linearToEaseOut),
                  ),
                  child: child,
                ));
}
