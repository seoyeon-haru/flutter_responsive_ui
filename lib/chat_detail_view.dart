import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/chat_list_item.dart';

class ChatDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ChatListItem(isSend: false),
          ChatListItem(isSend: true),
          Spacer(),
          SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
