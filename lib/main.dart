import 'package:flutter/material.dart';
import 'package:ecommerce/screens/login.dart';
import 'package:ecommerce/screens/register.dart';
import 'package:ecommerce/screens/welcome.dart';
import 'package:ecommerce/screens/dashboard.dart';
import 'package:ecommerce/screens/ecommerce_pages/edashboard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomePage(),
    routes: {
      'login': (context) => LoginPage(),
      'register': (context) => RegisterPage(),
      'welcome': (context) => WelcomePage(),
      'dashboard': (context) => DashBoardPage(),
      'edashboard': (context) => EcommerceDashBoard(),
    },
  ));
}