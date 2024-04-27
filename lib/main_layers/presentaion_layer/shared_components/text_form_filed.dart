import 'package:assiut_project/core/app_constants/app_colors.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final TextEditingController? controller;
  final TextDirection? textDirection;
  final Color? borderColor;

  final bool? enabled;
  final double? height;
  final double? width;
  final TextAlign? textAlign;

  const CustomTextFormFiled(
      {Key? key,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.hintStyle,
      this.obscureText,
      this.controller,
      this.validator,
      this.keyboardType,
      this.textDirection,
      this.enabled,
      this.onChanged,
      this.height,
      this.textAlign,
      this.width,
      this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);

    return SizedBox(
      height: AppDimensions.getDimensions(requiredHeight: height ?? 45),
      width: AppDimensions.getDimensions(requiredWidth: width ?? 320),
      child: TextFormField(
        textDirection: textDirection ?? TextDirection.ltr,
        onChanged: onChanged,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        textAlign: textAlign ?? TextAlign.right,
        enableSuggestions: false,
        autocorrect: false,
        decoration: InputDecoration(
          errorStyle: const TextStyle(height: 0),
          isDense: true,
          enabled: enabled ?? true,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor ?? AppColors.kLoginFormFiledBorder)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor ?? AppColors.kLoginFormFiledBorder)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: hintStyle ??
              const TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.kFormFiledHint,
                fontSize: 14,
                fontFamily: 'Almarai',
              ),
        ),
      ),
    );
  }
}
