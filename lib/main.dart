// import 'package:ecommerce/localApiAccess/testApiAccess.dart';
import 'package:ecommerce/screens/ecommerce_pages/addAddress.dart';
import 'package:ecommerce/screens/ecommerce_pages/localNotificationPage.dart';
// import 'package:ecommerce/screens/ecommerce_pages/mapInteration.dart';
// import 'package:ecommerce/screens/ecommerce_pages/cartPage.dart';
import 'package:ecommerce/screens/ecommerce_pages/paymentPage.dart';
// import 'package:ecommerce/screens/ecommerce_pages/productDetails.dart';
// import 'package:ecommerce/screens/ecommerce_pages/productDetails.dart';
import 'package:ecommerce/screens/ecommerce_pages/productList.dart';
import 'package:ecommerce/util/notifyService.dart';
import 'package:ecommerce/widgets/cardGesture.dart';
import 'package:ecommerce/widgets/favoriteIconWidget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/screens/login.dart';
import 'package:ecommerce/screens/register.dart';
import 'package:ecommerce/screens/welcome.dart';
import 'package:ecommerce/screens/dashboard.dart';
import 'package:ecommerce/screens/ecommerce_pages/edashboard.dart';
import 'package:ecommerce/screens/ecommerce_pages/category_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().init();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LocalNotificationTestPage(),
    routes: {
      'login': (context) => LoginPage(),
      'register': (context) => RegisterPage(),
      'welcome': (context) => WelcomePage(),
      'dashboard': (context) => DashBoardPage(),
      'edashboard': (context) => EcommerceDashBoard(),
      'categorylist': (context) => CategoryListPage(),
      'productlist': (context) => ProductListPage(),
      'address': (context) => Addresspage(),
      'payment': (context) => PaymentPage(),
      'orderconfirm': (context) => PaymentPage(),
      'notifications': (context) => LocalNotificationPage(),
    },
  ));
}

// import 'package:ecommerce/firebase_access/auth_signin.dart';
// import 'package:ecommerce/screens/welcome.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Authentication',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: WelcomePage(),
//     );
//   }
// }

class LocalNotificationTestPage extends StatefulWidget {
  LocalNotificationTestPage({Key? key}) : super(key: key);

  @override
  _LocalNotificationTestPageState createState() =>
      _LocalNotificationTestPageState();
}

class _LocalNotificationTestPageState extends State<LocalNotificationTestPage> {
  NotificationService _notificationService = NotificationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Test'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await _notificationService.showNotification();
                },
                child: Text('Show Notification'),
              ),
              SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  await _notificationService.showDynamicNotification(
                      1,
                      'Pongal Offer!',
                      'Welcome to the Pongal Offers of Amazon!..');
                },
                child: Text('Dynamic Notification'),
              ),
              SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  await _notificationService.scheduledDynamicNotification(
                      2,
                      'Pongal Offer at Diwali Time!',
                      'Welcome to the Pongal Offers of Amazon!..');
                },
                child: Text('Scheduled Dynamic'),
              ),
              SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  await _notificationService.cancelNotification(1);
                },
                child: Text('Cancel Notification'),
              ),
              SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  await _notificationService.cancelAllNotification();
                },
                child: Text('Cancel All'),
              ),
              SizedBox(height: 16.0),
              FavotireIconWidget(),
              SizedBox(height: 16.0),
              CardGestureWidget(),
            ],
          ),
        ),
      ),
    );
  }
}


