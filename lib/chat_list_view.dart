import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/chat_list_item.dart';

// 색상들을 형형색색 랜덤으로 넣어줘야 함
final colors = List.generate(100, (index) {
  final random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
});

class ChatListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return ChatListItem(
          /// ListView 에서는 항상 왼쪽에 보이기 때문에 false
          isSend: false,
          color: colors[index],
        );
      },
    );
  }
}
