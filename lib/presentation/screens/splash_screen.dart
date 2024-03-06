import 'package:flutter/material.dart';
import 'package:flutter_clinic/core/app_const.dart';
import 'package:flutter_clinic/presentation/screens/auth/welcome_screen.dart';
import 'package:flutter_clinic/presentation/screens/home/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    routing();
  }
  void routing()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    bool isLogined=prefs.getBool(AppConst.isLogined)??false;
     await Future.delayed(const Duration(seconds: 2));  
    if(isLogined){
     
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));

    }else{
            // ignore: use_build_context_synchronously
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const WelcomeScreen()));

    }
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}