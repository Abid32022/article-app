import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/auth/forgot_pass.dart';
import 'package:project1/views/bottom_navigation/bottom_navigation.dart';
import 'package:project1/views/bottom_navigation/home_screen/home_screen.dart';
import 'package:project1/widgets/custom_button.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/text_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bagroundColor,
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.bagroundColor,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size140,
              ),
              Center(
                  child: Image.asset(
                "assets/icons/welcome1.png",
                width: MySize.size160,
                height: MySize.size180,
              )),
              SizedBox(
                height: MySize.size35,
              ),
              Center(
                  child: customTextBold(
                      title: "Login",
                      fontSize: MySize.size18,
                      color: AppColors.black,
                      textAlign: TextAlign.center)),
              SizedBox(
                height: MySize.size32,
              ),
              customTextBold(
                  title: "Email",
                  fontSize: MySize.size14,
                  color: AppColors.black.withOpacity(0.40),
                  textAlign: TextAlign.center),
              SizedBox(
                height: MySize.size10,
              ),
              textField(
                  hintText: "david@gmail.com",
                  fontSize: MySize.size14,
                  fillcolor: AppColors.themecolor.withOpacity(0.06),
                  filled: true,
                  bordercolor: AppColors.themecolor.withOpacity(0.30)),
              SizedBox(
                height: MySize.size15,
              ),
              customTextBold(
                  title: "Email",
                  fontSize: MySize.size14,
                  color: AppColors.black.withOpacity(0.40),
                  textAlign: TextAlign.center),
              textField(
                  hintText: "**************",
                  fontSize: MySize.size14,
                  isObscure: visible,
                  suffix: true,
                  suffixWidget: GestureDetector(
                      onTap: () {
                        setState(() {
                          visible = !visible;
                        });
                      },
                      child: Icon(
                        visible ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.greyb8,
                      )),
                  fillcolor: AppColors.themecolor.withOpacity(0.06),
                  filled: true,
                  bordercolor: AppColors.themecolor.withOpacity(0.30)),

              SizedBox(
                height: MySize.size5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                  Get.to(()=>ForgotPassword());
                    },
                    child: customTextRegular(
                        title: "Forgot Password?",
                        fontSize: MySize.size12,
                        color: AppColors.blue3d,
                        textAlign: TextAlign.center),
                  ),
                ],
              ),

              SizedBox(
                height: MySize.size15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MySize.size120,
                    height: MySize.scaleFactorHeight * 1,
                    color: Colors.black.withOpacity(0.40),
                  ),
                  SizedBox(
                    width: MySize.size10,
                  ),
                  customTextBold(
                      title: "OR",
                      fontSize: MySize.size14,
                      color: AppColors.black,
                      textAlign: TextAlign.center),

                  SizedBox(
                    width: MySize.size10,
                  ),
                  Container(
                    width: MySize.size120,
                    height: MySize.scaleFactorHeight * 1,
                    color: Colors.black.withOpacity(0.40),
                  ),
                ],
              ),
              SizedBox(
                height: MySize.size30,
              ),
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
                    child: Image.asset(
                      "assets/icons/facebook.png",
                      scale: 3.5,
                    ),
                  ),
                  SizedBox(
                    width: MySize.size20,
                  ),
                  Container(
                    height: MySize.size60,
                    width: MySize.size60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.greyea),
                    ),
                    child: Image.asset(
                      "assets/icons/google.png",
                      scale: 3.5,
                    ),
                  ),
                  SizedBox(
                    width: MySize.size20,
                  ),
                  Container(
                    height: MySize.size60,
                    width: MySize.size60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.greyea),
                    ),
                    child: Image.asset(
                      "assets/icons/apple.png",
                      scale: 3.5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MySize.size40,
              ),
              Center(
                  child: customButton(
                    ontap: (){
                      Get.to(()=> BottomNavigation());
                    },
                      text: "Login",
                      height: MySize.size50,
                      width: Get.width,
                      color: AppColors.themecolor,
                      fontColor: AppColors.white,
                      fontSize: MySize.size16)),
              SizedBox(
                height: MySize.size50,
                ),


            ],
          ),
        ),
      ),
    );
  }
}
