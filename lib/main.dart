import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/screens/splash_screen.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/widgets/shared_preferences_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => SharedPrefsWidget(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: ApppColors.white,
            appBarTheme: const AppBarTheme(backgroundColor: ApppColors.white,
            elevation: 1,),
            fontFamily: "sf pro",
          ),
          home:const  SplashScreen(),
        ),
      ),
    );
  }
}


