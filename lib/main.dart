import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/responsive_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveView(
        // 모바일에서는 가로 크기를 동적으로 늘릴 수가 없어서
        // 웹에서 테스트
        mobile: Container(
          color: Colors.red,
        ),
        mobile480: Container(
          color: Colors.orange,
        ),
        tablet600: Container(
          color: Colors.yellow,
        ),
        tablet768: Container(
          color: Colors.green,
        ),
        pc1024: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
