import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final Icon ? suffixIcon;
  final Icon ? prefixIcon;
  final String ? hintText;
  final TextStyle ? hintStyle;

  const CustomTextFormFiled({Key? key, this.suffixIcon, this.prefixIcon, this.hintText, this.hintStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return  SizedBox(height: AppDimensions.getDimensions(requiredHeight: 45),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      child: TextFormField(
        decoration: InputDecoration(
          isDense: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.kLoginFormFiledBorder)
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColors.kFormFiledHint,
            fontSize: 14,
            fontFamily: 'Almarai',
          ),      ),
      ),
    );
  }
}
