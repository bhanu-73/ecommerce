import 'package:ecommerce/util/notifyService.dart';
import 'package:flutter/material.dart';

class LocalNotificationPage extends StatefulWidget {
  // const LocalNotificationPage({Key? key}) : super(key: key);

  @override
  void initState() {
    // super.initState();
    NotificationService _notificationService = NotificationService();
  }

  @override
  _LocalNotificationPageState createState() => _LocalNotificationPageState();
}

class _LocalNotificationPageState extends State<LocalNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
