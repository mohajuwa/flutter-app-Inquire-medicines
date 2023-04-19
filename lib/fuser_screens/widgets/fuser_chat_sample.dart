// صفحة الدردشة للصيدلي

import 'package:custom_clippers/custom_clippers.dart';

import 'package:flutter/material.dart';

class FuserChatSample extends StatelessWidget {
  final clr = const Color(0xFF58329B);
  final clr1 = const Color(0xFFE1E1E2);

  const FuserChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: clr1,
              ),
              child: const Text(
                "مرحبا يا نقيب ، والله انها  شغلة ومشفالة",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, top: 10, bottom: 25, right: 20),
                decoration: BoxDecoration(
                  color: clr,
                ),
                child: const Text(
                  "وانت تساكي ان الواجهات سهلة ، هههههههه ، ابلع ما ذلحين",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
