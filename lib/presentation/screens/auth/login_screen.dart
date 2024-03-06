import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_clinic/core/app_const.dart';
import 'package:flutter_clinic/presentation/screens/auth/activation_number_screen.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_clinic/presentation/widgets/app_button.dart';
import 'package:flutter_clinic/presentation/widgets/close_button.dart';
import 'package:flutter_clinic/presentation/widgets/custom_text_field.dart';
import 'package:flutter_clinic/presentation/widgets/shared_preferences_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: CloseButtonCustom(
          onPressed: () {},
        ),
        title: const Text(
          "Вход",
          style: AppFonts.w600s17,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Войти",
              style: AppFonts.w700s34,
            ),
            SizedBox(
              height: 49.h,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 11),
              child: Text(
                "Номер телефона",
                style: AppFonts.w400s15,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11),
              child: CustomTextField(
                hintText: "_ _ _ _ _ _ _ _ _",
                controller: controller,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 11),
              child: Text(
                "На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.",
                style: AppFonts.w400s15,
              ),
            ),
            const Spacer(),
            AppButton(
                text: "Далее",
                onPressed: ()async {
                  int code = Random().nextInt(8999) + 1000;
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(code.toString())),
                      );
                      await SharedPrefsWidget.prefs.setString(AppConst.phoneNumber, controller.text);
                      // ignore: use_build_context_synchronously
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> ActivationNumberScreen(code: code,)));

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
