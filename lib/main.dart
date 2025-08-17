import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/chat_detail_view.dart';
import 'package:flutter_responsive_ui/chat_list_view.dart';
import 'package:flutter_responsive_ui/home_page.dart';
import 'package:flutter_responsive_ui/responsive_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
