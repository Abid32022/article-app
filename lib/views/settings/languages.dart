import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/languages_model.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/text_widget.dart';
class Languagues extends StatefulWidget {
  const Languagues({Key? key}) : super(key: key);

  @override
  State<Languagues> createState() => _LanguaguesState();
}

class _LanguaguesState extends State<Languagues> {
  int currentIndex = -1;
  List<LanguagesModel> languagesList = [
    LanguagesModel("Indonesian", "assets/icons/languages1.png"),
    LanguagesModel("Malaysian", "assets/icons/lang2.png"),
    LanguagesModel("English", "assets/icons/lang3.png"),
    LanguagesModel("French", "assets/icons/lang4.png"),
    LanguagesModel("German", "assets/icons/lang5.png"),
    LanguagesModel("Hindi", "assets/icons/lang6.png"),
    LanguagesModel("Italian", "assets/icons/lang7.png"),
    LanguagesModel("Japanese", "assets/icons/lang8.png"),
    LanguagesModel("Korean", "assets/icons/lang9.png"),
  ];
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
        title: customTextBold(title: "Languages",fontSize: MySize.size18),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySize.size22,),
              textField(
                  hintText: "Search..",
                  fillcolor: AppColors.greyd8.withOpacity(0.20),
                  filled: true,
                  fontSize: MySize.size16,
                  fontColor: AppColors.greyd8,
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
              SizedBox(height: MySize.size10,),
              customTextBold(title: "Choose a language",fontSize: MySize.size16),
              SizedBox(height: MySize.size32,),

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: languagesList.length,
                  itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                 setState(() {
                   currentIndex =index;
                 });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: MySize.size48,width: Get.width,
                    decoration: BoxDecoration(
                      color:  AppColors.themecolor.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: MySize.size30,
                          width: MySize.size30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(languagesList[index].images)
                            ),
                          ),
                        ),
                        SizedBox(width: MySize.size10,),
                        customTextBold(title: languagesList[index].text,fontSize: MySize.size12),
                        Spacer(),
                        Icon(Icons.check,size: 15,color:index == currentIndex ?  Colors.black:Colors.transparent,),
                      ],
                    ),
                  ),
                );
              }),

            ],
          ),
        ),
      ),
    );
  }
}

// class ChooseLanguages extends StatefulWidget {
//    ChooseLanguages({Key? key,required this.b}) : super(key: key);
//   final LanguagesModel b;
//   @override
//   State<ChooseLanguages> createState() => _ChooseLanguagesState();
// }
//
// class _ChooseLanguagesState extends State<ChooseLanguages> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return
//       ;
//   }
// }
