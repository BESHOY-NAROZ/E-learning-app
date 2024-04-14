import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final Icon ? suffixIcon;
  final Icon ? prefixIcon;
  final String ? hintText;
  final TextStyle ? hintStyle;
  final bool ? obscureText;
  final TextInputType ? keyboardType;
  final String? Function(String?)?  validator;
  final TextEditingController ? controller;
  final TextDirection ? textDirection;
  final bool ? enabled;

  const CustomTextFormFiled({Key? key, this.suffixIcon, this.prefixIcon, this.hintText, this.hintStyle, this.obscureText, this.controller, this.validator, this.keyboardType, this.textDirection, this.enabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return  SizedBox(height: AppDimensions.getDimensions(requiredHeight: 45),
      width: AppDimensions.getDimensions(requiredWidth: 320),
      child: TextFormField(textDirection: textDirection ?? TextDirection.ltr,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        textAlign: TextAlign.right,

        decoration: InputDecoration(
          errorStyle: const TextStyle(height: 0),
          isDense: true,
          enabled: enabled ?? true,
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
          hintStyle: hintStyle ?? const TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColors.kFormFiledHint,
            fontSize: 14,
            fontFamily: 'Almarai',
          ),      ),
      ),
    );
  }
}
