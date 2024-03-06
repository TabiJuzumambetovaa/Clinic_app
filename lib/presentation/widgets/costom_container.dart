import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/screens/home/info_doctors.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: InkWell(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>InfoDactors()));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            color: ApppColors.white,
            width: 335.w,
            height: 76.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: ApppColors.textFieldColor,
                  radius: 28.r,
                  child: const Icon(
                    CupertinoIcons.person_alt,
                    color: ApppColors.white,
                  ),
                ),
                SizedBox(
                  width: 19.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Кардиолог",
                      style: AppFonts.w300s15,
                    ),
                    SizedBox(height: 10.h,),
                    Text(text,style: AppFonts.w500s17,),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.star),
                    SizedBox(height: 5.h,),
                    const Text("5.0"),
                  ],
                ),
                SizedBox(width: 16.w,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.message),
                    SizedBox(height: 5.h,),
        
                    const Text("12"),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
