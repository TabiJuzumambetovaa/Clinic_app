import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';

class ClearTextbutton extends StatelessWidget {
  const ClearTextbutton({
    super.key, required this.onPressed,
  });
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          "Очистить",
          style: AppFonts.w600s14
              .copyWith(color: ApppColors.tabtextColor),
        ));
  }
}