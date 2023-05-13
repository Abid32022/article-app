import 'package:flutter/material.dart';
import 'package:project1/model/your_interest_model.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';

import '../../../widgets/text_widget.dart';

class YourInterest extends StatefulWidget {
  const YourInterest({Key? key}) : super(key: key);

  @override
  State<YourInterest> createState() => _YourInterestState();
}

class _YourInterestState extends State<YourInterest> {
  bool isChecked = false;
  List<YourInterestModel> interestist=[
    YourInterestModel("Photography", "assets/icons/camera_info.png"),
    YourInterestModel("Shopping", "assets/icons/int1.png"),
    YourInterestModel("Karaoke", "assets/icons/int2.png"),
    YourInterestModel("Yoga", "assets/icons/int3.png"),
    YourInterestModel("Cooking", "assets/icons/int4.png"),
    YourInterestModel("Sports", "assets/icons/int4.png"),
    YourInterestModel("Run", "assets/icons/int5.png"),
    YourInterestModel("Swimming", "assets/icons/int6.png"),
    YourInterestModel("Art", "assets/icons/int7.png"),
    YourInterestModel("Traveling", "assets/icons/int8.png"),
    YourInterestModel("Extreme", "assets/icons/int9.png"),
    YourInterestModel("Music", "assets/icons/int10.png"),
    YourInterestModel("Cold", "assets/icons/int11.png"),
    YourInterestModel("Video games", "assets/icons/int12.png"),
    YourInterestModel("Health", "assets/icons/int13.png"),
    YourInterestModel("Energy", "assets/icons/int14.png"),
    YourInterestModel("Lifestyle", "assets/icons/int15.png"),
    YourInterestModel("Design", "assets/icons/int16.png"),
    YourInterestModel("3D", "assets/icons/int17.png"),
    YourInterestModel("Government", "assets/icons/int18.png"),
    YourInterestModel("Business", "assets/icons/int19.png"),
    YourInterestModel("Social", "assets/icons/int20.png"),
    YourInterestModel("Education", "assets/icons/int21.png"),
    YourInterestModel("Reading", "assets/icons/int22.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTextBold(title: "Your Interests",fontSize: MySize.size18,color: AppColors.black),
          SizedBox(height: MySize.size15,),

          Expanded(
            child: GridView.builder(
                itemCount: interestist.length,
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 30,
                  childAspectRatio: 2/5,
                  mainAxisExtent: 45,
                ), itemBuilder: (context,index){
              return GridYourIntrest(b: interestist[index],);

            }),
          )


        ],
      ),
    );
  }
}
class GridYourIntrest extends StatefulWidget {
  GridYourIntrest({Key? key,required this.b}) : super(key: key);
  final YourInterestModel b;

  @override
  State<GridYourIntrest> createState() => _GridYourIntrestState();
}

class _GridYourIntrestState extends State<GridYourIntrest> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        setState(() {
          isChecked=! isChecked;
        });
      },
      child: Container(
        height: MySize.scaleFactorHeight*45,
        width: MySize.scaleFactorWidth*155,
        decoration: BoxDecoration(
          color: isChecked? AppColors.themecolor.withOpacity(0.06):AppColors.themecolor,
          border: Border.all(color: AppColors.themecolor.withOpacity(0.30)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: MySize.size15,),
            Image.asset(widget.b.image,scale: 3.5,color: isChecked ? AppColors.themecolor: AppColors.white),
            SizedBox(width: MySize.size7,),
            customTextRegular(title: widget.b.title,fontSize: MySize.size14,color: isChecked?  AppColors.black: AppColors.white),

          ],
        ),
      ),
    );
  }
}
