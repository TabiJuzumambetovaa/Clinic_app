import 'package:flutter/material.dart';
import 'package:flutter_clinic/core/app_const.dart';
import 'package:flutter_clinic/presentation/screens/home/info_doctors.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ApppColors.circleAvatarBg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: const Text("Статьи",style: AppFonts.w700s34,),
        ),
        Expanded(
                child: ListView.builder(
                  itemCount: AppConst.news.length,
                  itemBuilder: (context, index) => NewsContainer(
                    text: AppConst.news[index],
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                ),
              ),

      ],),
    );
  }
}



class NewsContainer extends StatelessWidget {
  const NewsContainer({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: InkWell(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const InfoDactors()));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            color: ApppColors.white,
            width: 335.w,
            height: 76.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Text(text,style: AppFonts.w500s17,)),
                const Spacer(),
                Container(width: 56.w,height: 56.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: ApppColors.lightBlue),)
                
                
              ],
            ),
          ),
        ));
  }
}
