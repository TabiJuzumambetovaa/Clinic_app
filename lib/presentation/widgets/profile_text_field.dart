import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    super.key,
    required this.controller, required this.hintText,
  });

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: AppFonts.w400s17,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:AppFonts.w400s17,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: ApppColors.black)
        )
      ),
    );
  }
}