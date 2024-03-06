import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodeTextField extends StatelessWidget {
  const CodeTextField({
    super.key,
    required this.controller,
    this.errorText
  });

  final TextEditingController controller;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        
        controller: controller,
        obscureText: true,
        obscuringCharacter: "*",
        maxLength: 4,
        keyboardType: TextInputType.phone,
        style: AppFonts.w600s18,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          errorStyle: AppFonts.w400s15,
          errorText: errorText,
            counterText: "",
            enabledBorder: const UnderlineInputBorder(
                borderSide:
                    BorderSide(color: ApppColors.textFieldColor)),
            prefix: const Text(
              "Код",
              style: AppFonts.w600s18,
            ),
            suffix: CircleAvatar(
              backgroundColor: ApppColors.circleAvatarBg,
              radius: 17.5.r,
              child: IconButton(icon: const Icon(Icons.close,), onPressed: () { 
                controller.clear();
               },),
            )),
      ),
    );
  }
}