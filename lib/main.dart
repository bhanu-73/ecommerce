// // import 'package:ecommerce/localApiAccess/testApiAccess.dart';
// import 'package:ecommerce/screens/ecommerce_pages/addAddress.dart';
// // import 'package:ecommerce/screens/ecommerce_pages/mapInteration.dart';
// // import 'package:ecommerce/screens/ecommerce_pages/cartPage.dart';
// import 'package:ecommerce/screens/ecommerce_pages/paymentPage.dart';
// // import 'package:ecommerce/screens/ecommerce_pages/productDetails.dart';
// // import 'package:ecommerce/screens/ecommerce_pages/productDetails.dart';
// import 'package:ecommerce/screens/ecommerce_pages/productList.dart';
// import 'package:flutter/material.dart';
// import 'package:ecommerce/screens/login.dart';
// import 'package:ecommerce/screens/register.dart';
// import 'package:ecommerce/screens/welcome.dart';
// import 'package:ecommerce/screens/dashboard.dart';
// import 'package:ecommerce/screens/ecommerce_pages/edashboard.dart';
// import 'package:ecommerce/screens/ecommerce_pages/category_screen.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: WelcomePage(),
//     routes: {
//       'login': (context) => LoginPage(),
//       'register': (context) => RegisterPage(),
//       'welcome': (context) => WelcomePage(),
//       'dashboard': (context) => DashBoardPage(),
//       'edashboard': (context) => EcommerceDashBoard(),
//       'categorylist': (context) => CategoryListPage(),
//       'productlist': (context) => ProductListPage(),
//       'address': (context) => Addresspage(),
//       'payment': (context) => PaymentPage(),
//       'orderconfirm': (context) => PaymentPage(),
//     },
//   ));
// }

import 'package:ecommerce/firebase_access/auth_signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Authentication',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AuthSignInPage(),
    );
  }
}
