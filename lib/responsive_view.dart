import 'package:flutter/material.dart';

class ResponsiveView extends StatelessWidget {
  ResponsiveView({
    this.pc1024,
    this.tablet768,
    this.tablet600,
    this.mobile480,
    // 필수로 받아야 함
    required this.mobile,
  });

  // 위젯 내에서 사용할 때 데스크탑 PC용 UI 전달받을 수 있게 PC용 위젯
  final Widget? pc1024;
  // 태블릿용 위젯
  final Widget? tablet768;
  // 소형태블릿용 위젯
  final Widget? tablet600;
  // 모바일 가로모드용 위젯
  final Widget? mobile480;
  // 모바일 세로모드용 위젯
  // 세로모드용은 필수로 전달받을 수 있게 null이 아닌 타입으로 해줌
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    // 각각의 화면 크기에 따라서 위젯 다르게 리턴
    // 디바이스 가로 크기
    final deviceWidth = MediaQuery.sizeOf(context).width;
    if (deviceWidth >= 1024 && pc1024 != null) {
      return pc1024!;
    }
    if (deviceWidth >= 768 && tablet768 != null) {
      return tablet768!;
    }
    if (deviceWidth >= 600 && tablet600 != null) {
      return tablet600!;
    }
    if (deviceWidth >= 480 && mobile480 != null) {
      return mobile480!;
    }
    return mobile;
  }
}
