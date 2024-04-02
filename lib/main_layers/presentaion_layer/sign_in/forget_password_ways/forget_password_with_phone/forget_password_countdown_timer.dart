import 'dart:async';

import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/main_layers/presentaion_layer/sign_in/forget_password_ways/forget_password_with_phone/forget_password_get_code_phone_number.dart';
import 'package:flutter/material.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({Key? key}) : super(key: key);


  @override
  State<CountDownTimer> createState() => CountDownTimerState();
}



class CountDownTimerState extends State<CountDownTimer> {
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