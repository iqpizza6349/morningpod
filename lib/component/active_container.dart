
import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';

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
      child: FlutterSwitch(
          width: 98,
          height: 42,
          padding: 4,
          toggleSize: 36,
          borderRadius: 40,
          value: _isChecked,
          activeColor: const Color(0xFF76EE58),
          onToggle: (bool? value) {
            setState(() {
              _isChecked = value ?? true;
            });
          }
      )
    );
  }

}


