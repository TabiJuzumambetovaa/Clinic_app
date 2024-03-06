import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      keyboardType: TextInputType.phone,
      controller: controller,
      maxLength: 9,
      style: AppFonts.w700s17.copyWith(color: ApppColors.black),
      decoration: InputDecoration(
        counterText: "",
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ApppColors.fontsColor, width: 2.w)),
          prefix: Text(
            "0",
            style: AppFonts.w700s17.copyWith(color: ApppColors.black),
          ),
          hintText: hintText,
          hintStyle: AppFonts.w700s17),
    );
  }
}
