import 'dart:async';

import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class ResetPasswordCountDownTimer extends StatefulWidget {
  const ResetPasswordCountDownTimer({Key? key}) : super(key: key);


  @override
  State<ResetPasswordCountDownTimer> createState() => CountDownTimerState();
}



class CountDownTimerState extends State<ResetPasswordCountDownTimer> {
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
    _timer!.cancel();
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