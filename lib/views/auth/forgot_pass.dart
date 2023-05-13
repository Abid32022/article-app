import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/auth/signIn.dart';
import 'package:project1/views/auth/verification_code.dart';
import 'package:project1/widgets/custom_button.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/text_widget.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bagroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.c,
            children: [
              SizedBox(height: MySize.size140,),
              Center(child: Image.asset("assets/icons/welcome1.png",width: MySize.size160,height: MySize.size180,)),
              SizedBox(height: MySize.size35,),
              Center(child: customTextBold(title: "Forgot Password",fontSize: MySize.size18,color: AppColors.black,textAlign: TextAlign.center)),
              SizedBox(height: MySize.size32,),

              customTextBold(
                  title: "Email",
                  fontSize: MySize.size14,
                  color: AppColors.black.withOpacity(0.40),
                  textAlign: TextAlign.center),
              SizedBox(height: MySize.size10,),
              textField(
                  hintText: "david@gmail.com",
                  fontSize: MySize.size14,
                  fillcolor: AppColors.themecolor.withOpacity(0.06),
                  filled: true,
                  bordercolor: AppColors.themecolor.withOpacity(0.30)),
              SizedBox(height: MySize.size40,),
              customButton(text: "Next",ontap: (){Get.to(()=>VerificationCode());},
                  height: MySize.size50,width: Get.width,color: AppColors.themecolor,fontColor: AppColors.white,fontSize: MySize.size16),
              SizedBox(height: MySize.size40,),

              SizedBox(height: MySize.size100,),


            ],
          ),
        ),
      ),
    );
  }
}
