import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/auth/signIn.dart';
import 'package:project1/widgets/custom_button.dart';
import 'package:project1/widgets/text_widget.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bagroundColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.c,
            children: [
              SizedBox(height: MySize.size140,),
              Center(child: Image.asset("assets/icons/welcome1.png",width: MySize.size160,height: MySize.size180,)),
              SizedBox(height: MySize.size52,),
              customTextBold(title: "Sign up to continue",fontSize: MySize.size18,color: AppColors.black,textAlign: TextAlign.center),
              SizedBox(height: MySize.size32,),
              customButton(text: "Continue with email",ontap: (){Get.to(()=>SignIn());},
                  height: MySize.size50,width: MySize.size300,color: AppColors.themecolor,fontColor: AppColors.white,fontSize: MySize.size16),
              SizedBox(height: MySize.size40,),
              custombutton2(text: "Use phone number",buttonColor: Colors.white, height: MySize.size50,width: MySize.size300,fontColor: AppColors.themecolor,bordercolor: AppColors.greyf3,),
              SizedBox(height: MySize.size60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Container(
                width: MySize.size120,
                height: MySize.scaleFactorHeight*1,
                color: Colors.black.withOpacity(0.40),
              ),
                  SizedBox(width: MySize.size10,),
                  customTextBold(title: "OR",fontSize: MySize.size14,color: AppColors.black,textAlign: TextAlign.center),
                  SizedBox(width: MySize.size10,),
                  Container(
                    width: MySize.size120,
                    height: MySize.scaleFactorHeight*1,
                    color: Colors.black.withOpacity(0.40),
                  ),
                ],
              ),
              SizedBox(height: MySize.size30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MySize.size60,
                    width: MySize.size60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.greyea),
                    ),
                    child: Image.asset("assets/icons/facebook.png",scale: 3.5,),
                  ),
                  SizedBox(width: MySize.size20,),
                  Container(
                    height: MySize.size60,
                    width: MySize.size60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.greyea),
                    ),
                    child: Image.asset("assets/icons/google.png",scale: 3.5,),

                  ),  SizedBox(width: MySize.size20,),
                  Container(
                    height: MySize.size60,
                    width: MySize.size60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.greyea),
                    ),
                    child: Image.asset("assets/icons/apple.png",scale: 3.5,),
                  ),
                ],
              ),
              SizedBox(height: MySize.size80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customTextRegular(title: "I already have an account? ",fontSize: MySize.size14,color: AppColors.black.withOpacity(0.70),textAlign: TextAlign.center),
                  customTextBold(title: "Sign In",fontSize: MySize.size14,color: AppColors.themecolor,textAlign: TextAlign.center),

                ],
              ),
              SizedBox(height: MySize.size100,),


            ],
          ),
        ),
      ),
    );
  }
}
