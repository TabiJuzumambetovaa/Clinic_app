import 'package:flutter/material.dart';
import 'package:flutter_clinic/core/app_const.dart';
import 'package:flutter_clinic/presentation/screens/home/home_page.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_clinic/presentation/widgets/app_button.dart';
import 'package:flutter_clinic/presentation/widgets/close_button.dart';
import 'package:flutter_clinic/presentation/widgets/profile_text_field.dart';
import 'package:flutter_clinic/presentation/widgets/shared_preferences_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateProfaileScreen extends StatelessWidget {
  const CreateProfaileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerName = TextEditingController();
    final TextEditingController controllerLastName = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: CloseButtonCustom(
          onPressed: () {},
        ),
        title: const Text(
          "Создание профиля",
          style: AppFonts.w600s17,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            const Text(
              "Имя",
              style: AppFonts.w400s15,
            ),
            ProfileTextField(
              controller: controllerName,
              hintText: "Введите ваше имя",
            ),
            SizedBox(
              height: 20.h,
            ),
            const Text(
              "Фамилия",
              style: AppFonts.w400s15,
            ),
            ProfileTextField(
              controller: controllerLastName,
              hintText: "Введите вашу фамилию",
            ),
            const Spacer(),
            AppButton(text: "Далее", onPressed: ()async{
                final SharedPreferences pref=SharedPrefsWidget.prefs;
                await pref.setString(AppConst.name, controllerName.text);
                await pref.setString(AppConst.lastName, controllerLastName.text);
                await pref.setBool(AppConst.isLogined, true);
              // ignore: use_build_context_synchronously
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));

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
