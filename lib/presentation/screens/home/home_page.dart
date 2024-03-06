import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clinic/presentation/resourses/app_svgs.dart';
import 'package:flutter_clinic/presentation/screens/home/doctors_screen.dart';
import 'package:flutter_clinic/presentation/screens/home/news.dart';
import 'package:flutter_clinic/presentation/screens/home/profile_screen.dart';
import 'package:flutter_clinic/presentation/theme/app_consts.dart';
import 'package:flutter_clinic/presentation/theme/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    List<Widget> screens = [
      const  DoctorsScreen(),
      const Scaffold(
        body: Center(
          child: News()
        ),
      ),
      const Scaffold(
        body: Center(
          child: Text(
            "Вызов",
            style: AppFonts.w700s34,
          ),
        ),
      ),
      const DoctorsScreen(),
      const ProfileScreen(),
      
    ];

    return PersistentTabView(
      context,
      controller: controller,
      screens: screens,
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style16, // Choose the nav bar style with this property.
    );
  }

  

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        textStyle: AppFonts.w400s10,
        icon: const Icon(CupertinoIcons.person_add_solid),
        title: ("Доктора"),
        activeColorPrimary: ApppColors.buttonColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppFonts.w400s10,
        icon: const Icon(CupertinoIcons.list_dash),
        title: ("Статьи "),
        activeColorPrimary: ApppColors.buttonColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppFonts.w400s10,
        icon: SvgPicture.asset(AppSvgs.call,width: 26.w,),
        title: ("Вызов"),
        activeColorPrimary: ApppColors.buttonColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppFonts.w400s10,
        icon: const Icon(CupertinoIcons.square_favorites_alt_fill),
        title: ("Мои доктора"),
        activeColorPrimary: ApppColors.buttonColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: AppFonts.w400s10,
        icon: const Icon(CupertinoIcons.person),
        title: ("Профиль"),
        activeColorPrimary: ApppColors.buttonColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
