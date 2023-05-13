import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/app_const.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/widgets/text_widget.dart';
class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

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
        title: customTextBold(title: "About Us",fontSize: MySize.size18),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.bagroundColor,
          padding: EdgeInsets.symmetric(horizontal: 16),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySize.size50,),
              Center(
                child: Container(
                  height: MySize.scaleFactorHeight*151,
                  width: MySize.scaleFactorWidth*151,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/icons/aboutus.png")
                      )
                  ),
                ),
              ),
              SizedBox(height: MySize.size30,),

              customTextBold(title: "Our App is About",fontSize: MySize.size16,color: AppColors.black),
              SizedBox(height: MySize.size15,),
              customTextRegular(title: AppConst.aboutus,fontSize: MySize.size14,color: AppColors.grey63,align: TextAlign.justify),
              SizedBox(height: MySize.size10),
              customTextBold(title: "Our Developer Team",fontSize: MySize.size16,color: AppColors.black),
              SizedBox(height: MySize.size10),
              customTextRegular(title: AppConst.aboutus,fontSize: MySize.size14,color: AppColors.grey63,align: TextAlign.justify),
              SizedBox(height: MySize.size10),
              customTextBold(title: "Rate Us",fontSize: MySize.size16,color: AppColors.black),
              SizedBox(height: MySize.size10),
              customTextRegular(title: AppConst.aboutus,fontSize: MySize.size14,color: AppColors.grey63,align: TextAlign.justify),
              SizedBox(height: MySize.size10),
              customTextBold(title: "Community Guidelines",fontSize: MySize.size16,color: AppColors.black),
              SizedBox(height: MySize.size10),
              customTextRegular(title: AppConst.aboutus,fontSize: MySize.size14,color: AppColors.grey63,align: TextAlign.justify),

            ],
          ),
        ),
      ),
    );
  }
}
