
import 'package:flutter/material.dart';
import 'package:morning_pod/component/active_container.dart';
import 'package:morning_pod/component/week_widget.dart';

/// 이 클래스는 알람 컴포넌트, 리스트 컴포넌트로 표현됩니다.
/// 하위 컴포넌트들로는 다음과 같이 구성되어있습니다.
/// - 활성화된 요일
/// - 알람 활성화/비활성화 버튼
class Alarm extends StatelessWidget {
  const Alarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 368,
          height: 128,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF383838),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          child: const Stack(
            children: [
              Positioned(
                left: 25,
                top: 23,
                child: SizedBox(
                  width: 99,
                  height: 20,
                  child: Text(
                    'Alarm Alias',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 43,
                child: SizedBox(
                  width: 108,
                  height: 36,
                  child: Text(
                    '08:00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 122,
                top: 60,
                child: SizedBox(
                  width: 36,
                  height: 20,
                  child: Text(
                    'AM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 255,
                top: 38,
                child: ActiveSwitch()
              ),
              Positioned(
                left: 20,
                top: 95,
                child: SizedBox(
                  width: 208,
                  height: 27,
                  child: WeekWidget([false, true, true, true, true, true, false]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

