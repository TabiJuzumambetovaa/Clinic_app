import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({
    required this.onPressed,
    super.key,
  });
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.settings_outlined),
      color: ApppColors.black.withOpacity(0.75),
      iconSize: 24.h,
    );
  }
}
