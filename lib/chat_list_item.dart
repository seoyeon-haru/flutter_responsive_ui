import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  // 동그라미 색깔이 각각 다르기 때문에
  /// 멤버 변수로 Color 넣어줌
  /// 만약 색상 전달 안 받았을 때 amber 로 초기화
  ChatListItem({
    this.color = Colors.amber,

    /// 필수로 전달받을 수 있게 required
    required this.isSend,
  });

  final Color color;
  // 동그라미가 왼쪽에도 오른쪽에도 올 수 있음
  final bool isSend;

  @override
  Widget build(BuildContext context) {
    final children = [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
      SizedBox(width: 10),
      /// Expanded 로 남은 영역 다 차지하게 해줌
      Expanded(
        child: Column(
          children: [
            Container(
              height: 15,
              width: double.infinity,
              color: Colors.grey[300],
            ),
            SizedBox(height: 5),
            Container(
              height: 15,
              width: double.infinity,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    ];

    return Container(
      /// 아이템들이 ListView  내에서 조금씩 떨어질 수 있게
      /// Container 의 margin 속성 이용
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        /// isSend 여부에 따라서 동그라미가 어디에 오는지 구현
        children: isSend ? children.reversed.toList() : children,
      ),
    );
  }
}
