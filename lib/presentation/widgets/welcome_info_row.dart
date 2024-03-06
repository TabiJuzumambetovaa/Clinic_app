import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeInfoRow extends StatelessWidget {
  const WelcomeInfoRow({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 32.w,
        ),
        SizedBox(
          width: 18.w,
        ),
        Flexible(
            child: Text(
          text,
          style: AppFonts.w400s15,
        ))
      ],
    );
  }
}