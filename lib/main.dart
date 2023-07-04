import 'package:booktickets/Utils/app_styles.dart';
import 'package:booktickets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Tickets',
      theme: ThemeData(
        primaryColor: primary,
        useMaterial3: true,
      ),
      home: const BottomBar(),
    );
  }
}
