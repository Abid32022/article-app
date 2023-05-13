import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/flag_model.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/text_widget.dart';

class ChooseYourCountry extends StatefulWidget {
  ChooseYourCountry({Key? key,}) : super(key: key);

  @override
  State<ChooseYourCountry> createState() => _ChooseYourCountryState();
}

class _ChooseYourCountryState extends State<ChooseYourCountry> {
  List<FlagModel>flagList=[
    FlagModel("Pakistan", "assets/icons/flags.png"),
    FlagModel("Albania", "assets/icons/flag1.png"),
    FlagModel("Algeria", "assets/icons/flag3.png"),
    FlagModel("Andora", "assets/icons/flag4.png"),
    FlagModel("Angola", "assets/icons/flag5.png"),
    FlagModel("Argentina", "assets/icons/flag6.png"),
    FlagModel("Armenia", "assets/icons/flag7.png"),
  ];
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTextBold(
              title: "Choose Your Country", fontSize: MySize.size18),
          SizedBox(
            height: MySize.size30,
          ),
          textField(
              hintText: "Search..",
              fillcolor: AppColors.greyd8.withOpacity(0.20),
              filled: true,
              fontSize: MySize.size16,
              fontColor: AppColors.greyc9,
              suffix: true,
              suffixWidget: Container(
                height: MySize.size50,
                width: MySize.size48,
                decoration: BoxDecoration(
                    color: AppColors.themecolor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Image.asset("assets/icons/searchicon.png",scale: 3.7,),
              ),
              bordercolor: AppColors.greyd8),
          SizedBox(
            height: MySize.size30,
          ),
          ListView.builder(
              itemCount: flagList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                return  Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: MySize.size48,
                  width: Get.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: MySize.size30,
                            width: MySize.size40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              image: DecorationImage(
                                  image: AssetImage(flagList[index].flag),
                                  fit: BoxFit.fill
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MySize.size10,
                          ),
                          customTextRegular(title: flagList[index].name, fontSize: MySize.size14),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: Transform.scale(
                              scale: 1.5,
                              child: Container(
                                height: MySize.scaleFactorHeight*20,
                                width: MySize.scaleFactorWidth*20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index== currentIndex ?  AppColors.themecolor:Colors.white,
                                  border: Border.all(color:AppColors.themecolor.withOpacity(0.25),width: 1),
                                ),
                                child: Center(child: index==currentIndex ? const Icon(Icons.check,color: Colors.white,size: 10,):null,),
                              ),
                            ),
                          ),
                          SizedBox(width: MySize.size12,),
                        ],
                      ),
                      Divider(color: AppColors.greyd8.withOpacity(0.21),),

                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
