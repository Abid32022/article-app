import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/auth/user_information/choose_country.dart';
import 'package:project1/views/auth/user_information/discover_people.dart';
import 'package:project1/views/auth/user_information/profile_information.dart';
import 'package:project1/views/auth/user_information/your_interest.dart';
import 'package:project1/views/bottom_navigation/bottom_navigation.dart';
import 'package:project1/widgets/customwidget.dart';
import 'package:project1/widgets/text_widget.dart';
import '../../../widgets/custom_button.dart';

class UserInformation extends StatefulWidget {
  const UserInformation({Key? key}) : super(key: key);

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  int currentindex = 0;
  final controller = PageController(initialPage: 0);

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bagroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.bagroundColor,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title:
            customTextBold(title: "User Information", fontSize: MySize.size18),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MySize.size30,
            ),
            Padding(
              padding: EdgeInsets.only(top: MySize.scaleFactorHeight * 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                      4,
                      (i) => CustomIndicator(
                            isactive: currentindex >= i ? true : false,
                          ))
                ],
              ),
            ),
            SizedBox(
              height: MySize.size40,
            ),

            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    currentindex = value;
                  });
                },
                children: [
                  ChooseYourCountry(),
                  ProfileInformation(),
                  YourInterest(),
                  DiscoverPeople(),
                ],
              ),
            ),

            custombutton2(
              text:  currentindex ==2? "Next": "Finish",
              buttonColor: AppColors.themecolor,
              height: MySize.size50,
              width: Get.width,
              ontap: () {
                controller.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeIn);
                currentindex == 3 ? Get.to(() => BottomNavigation()) : null;
                // Get.to(()=>ResetPassward());
              },
              fontColor: AppColors.white,
              bordercolor: AppColors.themecolor,
            ),
          ],
        ),
      ),
    );
  }
}
