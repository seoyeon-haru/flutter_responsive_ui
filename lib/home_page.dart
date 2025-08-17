import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/chat_detail_view.dart';
import 'package:flutter_responsive_ui/chat_list_view.dart';
import 'package:flutter_responsive_ui/responsive_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      mobile: _HomePageMobile(),
      tablet600: _HomePageTablet600(),
    );
  }
}

// 폴더블 폰 닫혔을 때
// 폴더블 폰 열렸을 때
class _HomePageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatListView(),
    );
  }
}

// 폴더블 폰 열렸을 때
class _HomePageTablet600 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // 좌측에는 ChatListView
          // 우측에는 ChatDetailView
          SizedBox(
            width: 250,
            child: ChatListView(),
          ),
          Expanded(
            child: ChatDetailView(),
          )
        ],
      ),
    );
  }
}
