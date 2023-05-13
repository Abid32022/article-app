import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/widgets/text_widget.dart';
class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bagroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.bagroundColor,
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        title: customTextBold(title: "Help & Support",fontSize: MySize.size18),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: Get.width,
        child: Column(
          children: [
            SizedBox(height: MySize.size50,),
            Center(
              child: Container(
                height: MySize.scaleFactorHeight*151,
                width: MySize.scaleFactorWidth*151,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/icons/helpcenter.png")
                  )
                ),
              ),
            ),
            SizedBox(height: MySize.size50,),
          Container(
          //  height: MySize.size240,
            width: Get.width,
            decoration: BoxDecoration(
                color:  AppColors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.themecolor.withOpacity(0.06),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0,2)
                  ),
                ]
            ),
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: customTextBold(title: "Contact Information",fontSize: MySize.size16)),
                SizedBox(height: MySize.size24,),
                customContainer(text: "support@gmail.com",image: 'assets/icons/help1.png'),
                SizedBox(height: MySize.size12,),
                customContainer(text: "001802345467",image: 'assets/icons/help2.png'),
                SizedBox(height: MySize.size12,),
                customContainer(text: "www.facebook.com",image: 'assets/icons/help3.png'),
                SizedBox(height: MySize.size12,),
                customContainer(text: "www.writeway.com",image: 'assets/icons/help4.png'),

              ],
            ),
          )



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
            Image.asset(image!,height: MySize.size18,width: MySize.size16,),
            SizedBox(width: MySize.size18,),
            customTextRegular(title: text!,fontSize: MySize.size12,color: AppColors.grey90),

              ],
        ),
        Divider(indent: 28,endIndent: 6,),
      ],
    ),
  );
}