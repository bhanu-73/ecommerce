import 'package:flutter/material.dart';
import 'package:ecommerce/screens/login.dart';
import 'package:ecommerce/screens/register.dart';
import 'package:ecommerce/screens/welcome.dart';
import 'package:ecommerce/screens/dashboard.dart';
import 'package:ecommerce/screens/ecommerce_pages/edashboard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: EcommerceDashBoard(),
    routes: {
      'login': (context) => LoginPage(),
      'register': (context) => RegisterPage(),
      'welcome': (context) => WelcomePage(),
      'dashboard': (context) => DashBoardPage(),
      'edashboard': (context) => EcommerceDashBoard(),
    },
  ));
}


// class MyApp extends StatelessWidget {
//   This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: EcomDashBoard(title: 'E-Commerce'),
//     );
//   }
// }

// stateful widgets, stateless widgets, animation
// predictions - stful, stless, stanim
// Stateless Widget - immutable
// class EcomDashBoard extends StatelessWidget {
//   const EcomDashBoard({ Key? key, title}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // View components (UI)
//       backgroundColor: Colors.greenAccent,
//       appBar: AppBar(
//         title: Text('Dashboard'),
//         backgroundColor: Color.fromRGBO(5, 148, 47, 0.5),
//         centerTitle: true,
//         toolbarHeight: 56,
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         child: Text('Welcome Text here!...')
//       ),

//     );
//   }
  
// }