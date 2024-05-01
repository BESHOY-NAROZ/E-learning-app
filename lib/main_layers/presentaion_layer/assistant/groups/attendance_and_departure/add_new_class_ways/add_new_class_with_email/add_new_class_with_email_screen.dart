import 'package:assiut_project/core/app_constants/app_strings.dart';
import 'package:assiut_project/core/app_dimensions.dart';
import 'package:assiut_project/main_layers/presentaion_layer/assistant/groups/shared_components_groups/hint_text_groups.dart';
import 'package:assiut_project/main_layers/presentaion_layer/shared_components/custom_widgets/text_form_filed.dart';
import 'package:flutter/material.dart';

class AddNewClassWithEmail extends StatelessWidget {
  const AddNewClassWithEmail({Key? key}) : super(key: key);

  static final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context: context, designHeight: 778, designWidth: 360);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        HintTextGroups(
          myText: AppStrings.kAddStudentEmailGroups,
          fontSize: AppDimensions.defaultSize * 12,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 16),
        ),
        const CustomTextFormFiled(
          hintText: AppStrings.kForgetPasswordTextFormFiledHintEmail,
          keyboardType: TextInputType.phone,
        ),
        SizedBox(
          height: AppDimensions.getDimensions(requiredHeight: 8),
        ),
      ],
    );
  }
}
