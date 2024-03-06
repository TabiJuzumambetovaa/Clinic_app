import 'package:flutter/material.dart';
import 'package:flutter_clinic/data/app_data.dart';
import 'package:flutter_clinic/presentation/screens/auth/login_screen.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_clinic/presentation/widgets/app_button.dart';
import 'package:flutter_clinic/presentation/widgets/settings_button.dart';
import 'package:flutter_clinic/presentation/widgets/welcome_info_row.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Профиль",
          style: AppFonts.w600s17,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          SettingButton(
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            const Text(
              "Зачем нужен профиль?",
              style: AppFonts.w500s22,
            ),
            SizedBox(
              height: 25.h,
            ),
            Column(
              children: AppData.data
                  .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: WelcomeInfoRow(image: e.image, text: e.text),
                  ))
                  .toList(),
            ),
            AppButton(text: "Войти",onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));},)
          ],
        ),
      ),
    );
  }
}






