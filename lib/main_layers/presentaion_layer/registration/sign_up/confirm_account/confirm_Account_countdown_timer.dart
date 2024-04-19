import 'dart:async';

import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class ConfirmAccountCountDownTimer extends StatefulWidget {
  const ConfirmAccountCountDownTimer({Key? key}) : super(key: key);


  @override
  State<ConfirmAccountCountDownTimer> createState() => ConfirmAccountCountDownTimerState();
}



class ConfirmAccountCountDownTimerState extends State<ConfirmAccountCountDownTimer> {
  static Timer ? _timer;
  static  int _start = 60;

  @override
  void initState() {
    startTimer();
    super.initState();
  }
   void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
    Text('$_start',
      style:  const TextStyle(
          fontFamily: 'Almarai',
          color: AppColors.kSignInMainHintText,
          fontWeight: FontWeight.w700,
          fontSize: 12),
    );


  }
}