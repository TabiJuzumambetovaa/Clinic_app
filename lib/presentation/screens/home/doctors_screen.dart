import 'package:flutter/material.dart';
import 'package:flutter_clinic/core/app_const.dart';
import 'package:flutter_clinic/presentation/resourses/app_svgs.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_clinic/presentation/widgets/clear_text_button.dart';
import 'package:flutter_clinic/presentation/widgets/costom_container.dart';
import 'package:flutter_clinic/presentation/widgets/custom_choise_chip.dart';
import 'package:flutter_clinic/presentation/widgets/drop_down.dart';
import 'package:flutter_clinic/presentation/widgets/search_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return SafeArea(
      child: Scaffold(
          backgroundColor: ApppColors.circleAvatarBg,
          body: Column(
            children: [
              Container(
                color: ApppColors.white,
                width: 375.w,
                height: 270.h,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Доктора",
                              style: AppFonts.w700s34,
                            ),
                            const Spacer(),
                            SvgPicture.asset(AppSvgs.bell),
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            SearchTextField(
                              controller: controller,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            ClearTextbutton(
                              onPressed: () {
                                controller.clear();
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: ListView.builder(
                            itemCount: AppConst.speciality.length,
                            itemBuilder: (context, index) => CustomChoiseChip(
                              text: AppConst.speciality[index],
                              isselected: selectedIndex == index,
                              onSelected: (val) {
                                selectedIndex = index;
                                setState(() {});
                              },
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        const MyDropdown(),
                      ]),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: AppConst.doctors.length,
                  itemBuilder: (context, index) => CustomContainer(
                    text: AppConst.doctors[index],
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                ),
              ),
            ],
          )),
    );
  }
}
