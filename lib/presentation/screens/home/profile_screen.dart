import 'package:flutter/material.dart';
import 'package:flutter_clinic/core/app_const.dart';
import 'package:flutter_clinic/presentation/resourses/app_pngs.dart';
import 'package:flutter_clinic/presentation/resourses/app_svgs.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_clinic/presentation/widgets/add_file_button.dart';
import 'package:flutter_clinic/presentation/widgets/settings_button.dart';
import 'package:flutter_clinic/presentation/widgets/shared_preferences_widget.dart';
import 'package:flutter_clinic/presentation/widgets/tab_bar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SettingButton(onPressed: () {}),
        ],
        title: Text(
          "Мой профиль",
          style: AppFonts.w700s34.copyWith(color: ApppColors.black),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 16.h,
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundColor: ApppColors.lightBlue,
                child: imagePath != null
                    ? null
                    : Text(
                        "${SharedPrefsWidget.prefs.getString(AppConst.name)?[0] ?? ""} ${SharedPrefsWidget.prefs.getString(AppConst.lastName)?[0] ?? ""}",
                        style: const TextStyle(
                          color: ApppColors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 16.r,
                  backgroundColor: ApppColors.buttonColor,
                  child: InkWell(
                    onTap: () {
                      openDialog();
                      // pickImageFromGallery();
                    },
                    child: const Icon(
                      Icons.camera_alt,
                      size: 23,
                      color: ApppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            "${SharedPrefsWidget.prefs.getString(AppConst.name)}  ${SharedPrefsWidget.prefs.getString(AppConst.lastName)}",
            style: AppFonts.w500s22,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "${SharedPrefsWidget.prefs.getString(
              AppConst.phoneNumber,
            )}",
            style: AppFonts.w500s22,
          ),
          SizedBox(
            height: 400.h,
            child: DefaultTabController(
                initialIndex: 1,
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                        indicatorColor: ApppColors.buttonColor,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: ApppColors.buttonColor,
                        labelStyle: AppFonts.w500s15,
                        tabs: [
                          Tab(
                            icon: SvgPicture.asset(AppSvgs.eyedropper),
                            text: "Анализы",
                          ),
                          Tab(
                            icon: SvgPicture.asset(AppSvgs.collection),
                            text: "Диагнозы",
                          ),
                          Tab(
                            icon: SvgPicture.asset(AppSvgs.message),
                            text: "Рекомендации",
                          ),
                        ]),
                    Expanded(
                      child: TabBarView(children: [
                        Center(
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: TabBarWidget(
                                image: AppPngs.tabclipboard,
                                text:
                                    "У вас пока нет добавленных результатов анализов",
                                    addfileButton: const AddfileButton(),
                              )),
                        ),
                       Center(
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: TabBarWidget(
                                image: AppPngs.tabfile,
                                text:
                                    "У вас пока нет добавленных диагнозов",
                                    addfileButton: const AddfileButton(),
                              )),
                        ),
                        Center(
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: TabBarWidget(
                                image: AppPngs.tabclipboard,
                                text:
                                    "У вас пока нет добавленных результатов анализов",
                                    
                              )),
                        ),
                      ]),
                    )
                  ],
                )),
          )
        ]),
      ),
    );
  }

  void openDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: SizedBox(
                height: 200.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          pickImageFromGallery(ImageSource.camera);
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Camers",
                          style: AppFonts.w700s34,
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextButton(
                        onPressed: () {
                          pickImageFromGallery(ImageSource.gallery);
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Gallery",
                          style: AppFonts.w700s34,
                        )),
                  ],
                ),
              ),
            ));
  }

  Future<void> pickImageFromGallery(ImageSource source) async {
    final ImagePicker imagePicker = ImagePicker();
    final XFile? file = await imagePicker.pickImage(source: source);
    if (file != null) {
      imagePath = file.path;
      setState(() {});
      // ignore: use_build_context_synchronously
    }
  }
}


