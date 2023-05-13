import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/my_article/my_profile.dart';
import 'package:project1/views/settings/about_us.dart';
import 'package:project1/views/settings/faq.dart';
import 'package:project1/views/settings/help_centere.dart';
import 'package:project1/views/settings/languages.dart';
import 'package:project1/widgets/profile_appbar.dart';
import 'package:project1/widgets/text_widget.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bagroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.bagroundColor,
        centerTitle: true,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: customTextBold(title: "Settings",fontSize: MySize.size18),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MySize.size30,),
            Container(
             // / height: MySize.size310,
              width: Get.width,
              padding: EdgeInsets.symmetric(horizontal: 19,vertical: 24),
              decoration: BoxDecoration(
                  color:  AppColors.themecolor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(8),
                // boxShadow: [
                //   BoxShadow(
                //       color: AppColors.themecolor.withOpacity(0.06),
                //     spreadRadius: 2,
                //     blurRadius: 2,
                //     offset: Offset(0,2)
                //   ),
                // ]
              ),
              child:Column(
                children: [
                  customContainer(text: "Personal Info",image: "assets/icons/setting1.png",ontap: (){Get.to(()=> MyProfile());}),
                  SizedBox(height: MySize.size14,),
                  customContainer(text: "FAQ",image: "assets/icons/faq.png",ontap: (){Get.to(()=> Faqs());}),
                  SizedBox(height: MySize.size14,),
                  customContainer(text: "Language",image: "assets/icons/settings2.png",ontap: (){Get.to(()=>Languagues());}),
                  SizedBox(height: MySize.size14,),
                  customContainer(text: "Help & Support",image: "assets/icons/settings3.png",ontap: (){ Get.to(()=>HelpCenter());}),
                  SizedBox(height: MySize.size14,),
                  customContainer(text: "Privacy Policy",image: "assets/icons/settings4.png"),
                  SizedBox(height: MySize.size14,),
                  customContainer(text: "About Us",image: "assets/icons/settings5.png",ontap: (){Get.to(()=>AboutUs());}),
                  SizedBox(height: MySize.size14,),
                  customContainer(text: "Log Out",image: "assets/icons/settings6.png",ontap:(){ } ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

Widget customContainer({String ? image,String ? text,Function? ontap}){
  return GestureDetector(
    onTap: (){
      ontap!();
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(image!,height: MySize.size18,width: MySize.size16,color: AppColors.themecolor,),
            SizedBox(width: MySize.size18,),
            customTextRegular(title: text!,fontSize: MySize.size12,color: AppColors.grey90),
            Spacer(),
            Icon(Icons.arrow_forward_ios,color: AppColors.grey999,size: 15,),
          ],
        ),
        Divider(indent: 28,endIndent: 6,),
      ],
    ),
  );
}
