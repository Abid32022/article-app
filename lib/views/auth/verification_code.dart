import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/auth/reset_passward.dart';
import 'package:project1/views/auth/signIn.dart';
import 'package:project1/widgets/custom_button.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/text_widget.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
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
                      title: "Verification Code",
                      fontSize: MySize.size18,
                      color: AppColors.black,
                      textAlign: TextAlign.center)),
              SizedBox(
                height: MySize.size40,
              ),
              Align(
                alignment: Alignment.center,
                child: Pinput(
                  defaultPinTheme: PinTheme(
                      textStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: MySize.size24,
                          color: AppColors.white),
                      height: MySize.scaleFactorHeight * 56,
                      width: MySize.scaleFactorWidth * 56,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border.all(color: AppColors.themecolor),
                        borderRadius: BorderRadius.circular(12),
                      )),
                  submittedPinTheme: PinTheme(
                      height: MySize.scaleFactorHeight * 56,
                      width: MySize.scaleFactorWidth * 56,
                      textStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: MySize.size24,
                          color: AppColors.white),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.themecolor,
                          border: Border.all(
                              width: 1.05, color: AppColors.themecolor))),
                  focusedPinTheme: PinTheme(
                      height: MySize.scaleFactorHeight * 56,
                      width: MySize.scaleFactorWidth * 56,
                      textStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: MySize.size24,
                          color: AppColors.white),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 1.05, color: AppColors.themecolor))),
                ),),

              SizedBox(height: MySize.size20,),
              TweenAnimationBuilder(
                  tween: Tween(
                      begin: const Duration(minutes: 0, seconds: 42),
                      end: Duration.zero),
                  onEnd: () {},
                  duration: (const Duration(minutes: 1, seconds: 27)),
                  builder: (BuildContext context, Duration value, Widget? child) {
                    final minutes = value.inMinutes;
                    final seconds = value.inSeconds % 60;
                    return Align(
                      alignment: Alignment.center,
                      child: Text(
                        '$minutes: $seconds',
                        style: GoogleFonts.inter(
                            fontSize: MySize.scaleFactorHeight * 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black),
                      ),
                    );
                  }),



              SizedBox(height: MySize.size40,),
              custombutton2(
                text: "Send again",
                buttonColor: Colors.white,
                height: MySize.size50,
                width: Get.width,
                ontap: (){
                  Get.to(()=>ResetPassward());
                },
                fontColor: AppColors.themecolor,
                bordercolor: AppColors.themecolor,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
