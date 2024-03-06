import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';

class CloseButtonCustom extends StatelessWidget {
  const CloseButtonCustom({
    super.key, required this.onPressed,
  });
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: ApppColors.black.withOpacity(0.70),
      ),
      onPressed: onPressed,
    );
  }
}
