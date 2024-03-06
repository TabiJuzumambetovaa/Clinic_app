import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/screens/auth/create_profile_screen.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_clinic/presentation/widgets/app_button.dart';
import 'package:flutter_clinic/presentation/widgets/code_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ActivationNumberScreen extends StatefulWidget {
  ActivationNumberScreen({super.key, required this.code});
  int code;

  @override
  State<ActivationNumberScreen> createState() => _ActivationNumberScreenState();
}

class _ActivationNumberScreenState extends State<ActivationNumberScreen> {
  final TextEditingController controller = TextEditingController();
  String? errorText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ApppColors.black,
            )),
        title: const Text(
          "Подтверждение номера",
          style: AppFonts.w600s17,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            const Text(
              "Введите код из смс",
              style: AppFonts.w500s22,
            ),
            SizedBox(
              height: 147.h,
            ),
            CodeTextField(
              controller: controller,
              errorText: errorText,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextButton(
                onPressed: () {
                  widget.code = Random().nextInt(8999) + 1000;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(widget.code.toString())),
                  );
                },
                child: Text(
                  "Получить код повторно",
                  style: AppFonts.w400s15.copyWith(
                      color: ApppColors.textButtonColor,
                      decoration: TextDecoration.underline),
                )),
            const Spacer(),
            AppButton(
                text: "Далее",
                onPressed: () {
                  if (controller.text == widget.code.toString()) {
                    errorText = null;
                    setState(() {});
                  } else {
                    errorText = "Код неверный!";
                    setState(() {});
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateProfaileScreen()));
                }),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
