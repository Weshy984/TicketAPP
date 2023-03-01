import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/bottom_bar.dart';
import 'package:ticket_booking/utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tick-et',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: primary,
      ),
      //home holds first screen to be seen
      home: const BottomBar(),
    );
  }
}


