
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/model/onboarding_model.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/auth/sign_up.dart';
import 'package:project1/widgets/custom_button.dart';
import 'package:project1/widgets/text_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentindex = 0;

  late Image  images=Image.asset("assets/images/onbo1.png",fit: BoxFit.cover,);

  List<OnboardingModel> onboardingList =[
    OnboardingModel("Look through engaging articles on daily base", "Lorem ipsum dolor sit amet, consectetur adipi scing elit. Etiam eu turpis molestie, dictum "),
    OnboardingModel("Write & Post your idea just share with others ", "Lorem ipsum dolor sit amet, consectetur adipi scing elit. Etiam eu turpis molestie, dictum "),
    OnboardingModel("Make Connection with others join community", "Lorem ipsum dolor sit amet, consectetur adipi scing elit. Etiam eu turpis molestie, dictum "),
  ];
  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 1,
    );
    return Scaffold(
      backgroundColor: AppColors.bagroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MySize.scaleFactorHeight*0,),
            Container(
              height: MySize.scaleFactorHeight*500,
              width: Get.width,
              child:images,
              color: AppColors.bagroundColor,
            ),

            Container(
              color: AppColors.bagroundColor,
              //  color: Colors.red,
              height: MySize.scaleFactorHeight*250,
              child: Stack(
                children: [

                  PageView.builder(
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (v){
                        setState(() {
                          currentindex = v;
                          if (v== 0){
                            images =Image.asset("assets/images/onbo1.png",fit: BoxFit.fill,);
                            setState(() {});
                          }else if(v==1){
                            images =Image.asset("assets/images/onbo2.png",fit: BoxFit.fill);
                            setState(() {});
                          }else if(v==2){
                            images =Image.asset("assets/images/onbo3.png",fit: BoxFit.fill);
                            setState(() {});
                          }
                        });
                      },

                      controller: controller,
                      itemCount: 3,
                      itemBuilder: (context,index){
                        return  Container(
                          color: AppColors.bagroundColor,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: Get.width,
                          child: Column(
                            children: [

                              SizedBox(height: MySize.size50,),
                              customExtraBold(title: onboardingList[index].title,fontSize: MySize.size24,color: AppColors.black,textAlign: TextAlign.center),
                            //  Text(onboardingList[index].title ,style:TextStyle(fontSize: MySize.size24,fontWeight: FontWeight.w700,color: Colors.grey,fontFamily: 'Poppins'),textAlign: TextAlign.center,),
                              SizedBox(height: MySize.scaleFactorHeight*20,),
                              customTextRegular(title: onboardingList[index].subtitle,fontSize: MySize.size14,color: AppColors.greyb8,textAlign: TextAlign.center),

                         //     Text(onboardingList[index].subtitle,style: TextStyle(fontSize: MySize.size16,fontWeight: FontWeight.w400,color: Colors.grey,),textAlign: TextAlign.center,),
                            ],
                          ),
                        );
                      }),
                  Container(
                    height: MySize.scaleFactorHeight*50,
                    width: Get.width,
                    decoration: const BoxDecoration(
                     //   color: Colors.red,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(0),topRight: Radius.circular(0))
                    ),
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: MySize.scaleFactorWidth *10,                   // radius: 10,
                          dotHeight: 5,
                          dotWidth: 15,
                          paintStyle: PaintingStyle.fill,
                          dotColor: Colors.grey,
                          activeDotColor: Colors.blue,
                        ),),
                    ),
                  ),
                ],
              ),
              ),
            Container(
              margin: EdgeInsets.only(
                  left: MySize.scaleFactorWidth * 35,
                  right: MySize.scaleFactorWidth * 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(()=> SignUp());
                    },
                    child: Column(
                      children: [
                        SizedBox(height: MySize.size18,),
                        Text(
                          "Skip",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.grey3f,
                            fontSize: MySize.scaleFactorHeight * 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat-Regular'
                          ),
                        ),
                      ],
                    ),
                  ),
                  customButton(
                      ontap: (){
                          controller.nextPage(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeIn);
                          currentindex == 2?Get.to(()=> SignUp()):null;
                      },
                      showText: false,
                      widget:Icon(Icons.arrow_forward,
                        color: AppColors.white,size: 30,),height: MySize.size68,
                      width: MySize.size68,borderRadius: 26,color: AppColors.themecolor),
                  // custombutton2(text: "Next",fontSize: MySize.size18,fontWeight: FontWeight.w400,ontap: (){

                  // },
                  //     fontColor: Colors.white,height: MySize.size56,width: MySize.scaleFactorWidth*158)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
