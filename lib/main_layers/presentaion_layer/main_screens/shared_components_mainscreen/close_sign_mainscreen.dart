import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class CloseSign extends StatelessWidget {
  const CloseSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.close_rounded,
      size: 20,
      weight: 100
      ,color: AppColors.kResetPasswordDone,
    );
  }
}
