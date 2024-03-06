import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_clinic/presentation/widgets/add_file_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    this.onPressed,
    this.addfileButton,
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  final Function()? onPressed;
  final AddfileButton? addfileButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Image.asset(
          image,
          width: 105.w,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          text,
          style: AppFonts.w500s15.copyWith(color: ApppColors.tabtextColor),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 40.h,
        ),
        addfileButton??const SizedBox()
      ],
    );
  }
}
