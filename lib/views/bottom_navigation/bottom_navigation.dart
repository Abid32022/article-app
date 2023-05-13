import 'package:flutter/material.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/bottom_navigation/home_screen/home_screen.dart';
import 'package:project1/views/my_article/create_article.dart';
import 'package:project1/views/my_article/my_article.dart';
import 'package:project1/views/my_article/my_profile.dart';
import 'package:project1/views/settings/settings.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  final screens = [
    HomeScreen(),
    MyArticle(),
    CreateArticle(),
    Settings(),
    MyProfile(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 3),
        height: MySize.scaleFactorHeight*72,
        decoration: const BoxDecoration(
            color: Colors.white
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: AppColors.bagroundColor,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.white,
              selectedItemColor: AppColors.themecolor,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,height: 1.8,color: AppColors.themecolor),
              unselectedLabelStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),
              currentIndex: currentIndex,
              onTap: (a){
                setState(() {
                  currentIndex = a;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Image.asset("assets/icons/b1.png",height: MySize.size20,color: currentIndex == 0 ? AppColors.themecolor: Colors.grey ,),label: "Home",),
                BottomNavigationBarItem(icon: Image.asset("assets/icons/b2.png",height: MySize.size20,color: currentIndex == 1? AppColors.themecolor:Colors.grey,),label: "My Article"),
                BottomNavigationBarItem(icon: Image.asset("assets/icons/b4.png",height: MySize.size32,color: currentIndex == 2?AppColors.themecolor:Colors.grey,),label: "Create List"),
                BottomNavigationBarItem(icon: Image.asset("assets/icons/b5.png",height: MySize.size20,color: currentIndex == 3?AppColors.themecolor:Colors.grey,),label: "list"),
                BottomNavigationBarItem(icon: Image.asset("assets/icons/b6.png",height: MySize.size20,color: currentIndex == 4?AppColors.themecolor:Colors.grey,),label: "Profile"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
