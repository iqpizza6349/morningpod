import 'package:flutter/material.dart';

/// 이 클래스는 한 주의 요일마다 알람이
/// 활성되어있는 지 비활성화되어 있는 지를 표현하는
/// 텍스트 형태의 라벨입니다.
class WeekWidget extends StatelessWidget {
  final List<bool> enables;

  const WeekWidget(this.enables, {super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          children: [
            for (int i = 0; i < 7; i++)
              TextSpan(
                text: "${["S", "M", "T", "W", "T", "F", "S"][i]}${i < 6 ? "  " : ""}",
                style: TextStyle(
                  color: isDayEnabled(i) ? Colors.white : const Color(0xFF767676),
                  fontSize: 18,
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w500,
                  height: 0
                )
              )
          ]
        ),
    );
  }

  bool isDayEnabled(int dayIndex) {
    return enables[dayIndex];
  }
}


