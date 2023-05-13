import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/main.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/auth/onboarding.dart';
import 'package:project1/views/bottom_navigation/bottom_navigation.dart';
import 'package:project1/views/bottom_navigation/home_screen/home_screen.dart';
import 'package:project1/views/my_article/my_article.dart';
import 'package:project1/views/my_article/my_profile.dart';
import 'package:project1/views/settings/settings.dart';
import 'package:project1/widgets/custom_button.dart';
import 'package:project1/widgets/text_widget.dart';

import 'user_information/user_information.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.bagroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Expanded(
          flex: 4,
            child: Container(
        //  color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(child: Image.asset("assets/icons/welcome1.png",width: MySize.size160,height: MySize.size180,)),
                  SizedBox(height:MySize.size15,),
                  customTextBold(title: "Write Way",fontSize: MySize.size24,color: AppColors.themecolor),
                ],
              ),
              )),

          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: customButton(
                ontap: (){
                  Get.to(()=>OnboardingScreen());
                },
                  showText: false,
                  widget:Icon(Icons.arrow_forward,
                    color: AppColors.white,size: 30,),height: MySize.size68,
                  width: MySize.size68,borderRadius: 28,color: AppColors.themecolor),
            ),
          ),
          SizedBox(height: MySize.size50,),
        ],
      ),

    );

  }
}