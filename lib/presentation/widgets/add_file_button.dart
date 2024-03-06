import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/resourses/app_svgs.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_svg/svg.dart';

class AddfileButton extends StatelessWidget {
  const AddfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppSvgs.addFile),
        TextButton(
            onPressed: () {
              getfile();
            },
            child: const Text(
              "Добавить документ",
              style: AppFonts.w500s15,
            ))
      ],
    );
  }

  Future<void> getfile() async {
    // ignore: unused_local_variable
    final List<File>? pickedFiles;

    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result != null) {
      pickedFiles = result.paths.map((path) => File(path!)).toList();
    } else {
      // User canceled the picker
    }
  }
}
