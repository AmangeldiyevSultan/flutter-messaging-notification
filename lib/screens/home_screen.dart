import 'package:flutter/material.dart';
import 'package:flutter_firebase_messaging/services/notification_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.firebaseInit();

    // notificationServices.getDeviceToken().then((value) {
    //   print('device token\n' + value);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
