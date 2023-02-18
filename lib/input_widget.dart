import 'constants.dart';
import 'package:flutter/material.dart';

class InputFormContainer extends StatelessWidget {
  const InputFormContainer(
      {Key? key,
      required this.inputHintText,
      required this.controller,
      required this.validator,
      required this.isPassword})
      : super(key: key);
  final String inputHintText;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 30,
        minWidth:200,
        maxHeight: 50.0,
        maxWidth:  300,
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          focusColor: AppColor.primaryWhite.withOpacity(0.4),
          labelText: inputHintText,
          labelStyle: AppColor.kAddFundSubFontStyle
              .copyWith(color: AppColor.primaryWhite.withOpacity(0.4)),
          fillColor: AppColor.primaryWhite.withOpacity(0.4),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1, color: AppColor.primaryWhite.withOpacity(0.4)),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1, color: AppColor.primaryWhite.withOpacity(0.4)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
