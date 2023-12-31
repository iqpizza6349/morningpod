
import 'package:flutter/cupertino.dart';

/// 이 클래스는 알람 활성화 버튼이 들어갈 컨테이너 클래스입니다.
class ActiveSwitch extends StatefulWidget {
  const ActiveSwitch({super.key});

  @override
  State<ActiveSwitch> createState() => _ActiveSwitchState();
}

class _ActiveSwitchState extends State<ActiveSwitch> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98,
      height: 42,
      child: CupertinoSwitch(
          value: _isChecked,
          activeColor: const Color(0xFF76EE58),
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value ?? true;
            });
          }
      )
    );
  }

}


