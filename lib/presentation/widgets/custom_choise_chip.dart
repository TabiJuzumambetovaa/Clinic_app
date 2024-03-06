import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';

class CustomChoiseChip extends StatelessWidget {
  const CustomChoiseChip({
    super.key,
    required this.text,
    required this.isselected,
    required this.onSelected,
  });
  final String text;
  final bool isselected;
  final Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ChoiceChip(
          onSelected: onSelected,
          showCheckmark: false,
          backgroundColor: ApppColors.white,
          selectedColor: ApppColors.buttonColor,
          avatarBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
              side: const BorderSide(color: ApppColors.black)),
          label: Text(
            text,
            style: AppFonts.w600s15.copyWith(
                color: isselected ? ApppColors.white : ApppColors.fontsColor),
          ),
          selected: isselected),
    );
  }
}