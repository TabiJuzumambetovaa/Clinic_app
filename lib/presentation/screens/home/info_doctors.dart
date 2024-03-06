import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/resourses/app_svgs.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_clinic/presentation/widgets/app_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class InfoDactors extends StatelessWidget {
  const InfoDactors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: ApppColors.black,
        ),
        title: Text("Чынгыз Акылбеков",
            style: AppFonts.w600s17.copyWith(color: ApppColors.black)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              CupertinoIcons.square_favorites_alt,
              color: ApppColors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundColor: ApppColors.textFieldColor,
              ),
              const Text(
                "Чынгыз Акылбеков",
                style: AppFonts.w500s22,
              ),
              SizedBox(
                height: 10.h,
              ),
              const Text(
                "Кардиолог",
                style: AppFonts.w400s17,
              ),
              SizedBox(
                height: 18.h,
              ),
              RatingBarIndicator(
                rating: 2.75,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: ApppColors.starRating,
                ),
                itemCount: 5,
                itemSize: 50.0,
                direction: Axis.horizontal,
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
                                icon: SvgPicture.asset(AppSvgs.user),
                                text: "О докторе",
                              ),
                              Tab(
                                icon: SvgPicture.asset(AppSvgs.location),
                                text: "Контакты",
                              ),
                              Tab(
                                icon: SvgPicture.asset(AppSvgs.messageDoc),
                                text: "Отзывы",
                              ),
                            ]),
                        Expanded(
                          child: TabBarView(children: [
                            Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Column(
                                    children: [
                                      const Flexible(
                                          child: Text(
                                        "Максимально внимательно относится к каждому своему пациенту, старается найти индивидуальный подход, успешно диагностирует и получает хорошие результаты в лечении острых и хронических болезней. В частности, занимается вопросами нарушения сердечного ритма, врожденными пороками сердца, так называемыми синкопальными состояниями (проще говоря – обмороками). Для подбора эффективного лечения врач оценивает жизненно важные функции, анализирует информацию о принимаемых ребенком лекарствах и перенесенных заболеваниях, назначает необходимые исследования нервной системы.  Возможно получение медицинской помощи без взимания платы при очном обращении в объемах, предусмотренных стандартами обязательного медицинского страхования (ОМС).",
                                        style: AppFonts.w400s17,
                                      )),
                                      const Spacer(),
                                      AppButton(
                                          text: "Записаться на прием",
                                          onPressed: () {}),
                                    ],
                                  )),
                            ),
                            Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20,vertical: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        
                                        children: [
                                          const Icon(
                                            Icons.call,
                                            color: ApppColors.black,
                                          ),
                                          SizedBox(width: 10.w,),
                                          Column(
                                            children: [const Text("+996 555 89 39 54",style: AppFonts.w400s17,),
                                            SizedBox(height: 5.h,),
                                            const Text("+996 771 29 55 22",style: AppFonts.w400s17,)],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20.h,),
                                      Row(
                                        
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            color: ApppColors.black,
                                          ),
                                          SizedBox(width: 10.w,),
                                          const Column(
                                            children: [Text("г. Бишкек, ул. Московская, 224, \n клиника “Медикал Нео”",style: AppFonts.w400s17,),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20.h,),
                                      Row(
                                        
                                        children: [
                                          const Icon(
                                            Icons.message_outlined,
                                            color: ApppColors.black,
                                          ),
                                          SizedBox(width: 10.w,),
                                          const Column(
                                            children: [Text("akylbekov.ch@example.com",style: AppFonts.w400s17,),
                                            ],
                                          )
                                        ],
                                      ),
                                      const Spacer(),
                                      AppButton(
                                          text: "Записаться на прием",
                                          onPressed: () {}),
                                    ],
                                  )),
                            ),
                            Center(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Column(
                                    children: [
                                      const Text(''),
                                      const Spacer(),
                                      AppButton(
                                          text: "Записаться на прием",
                                          onPressed: () {}),
                                    ],
                                  )),
                            ),
                          ]),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
