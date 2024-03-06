import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key, required this.controller, this.onChanged,
  });
  final TextEditingController controller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 266.w,
      height: 36.h,
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: IconButton(
              onPressed: () {}, icon: const Icon(Icons.search)),
          hintText: "Поиск врача",
          hintStyle: AppFonts.w400s17,
          filled: true,
          fillColor: ApppColors.searchTextfielColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.r),
              borderSide: BorderSide(
                  color: ApppColors.searchTextfielColor)),
        ),
      ),
    );
  }
}
