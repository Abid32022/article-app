import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/top_authors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/bottom_navigation/top_author_profile.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/text_widget.dart';

import '../../utils/app_colors.dart';
class TopAuthors extends StatefulWidget {
  const TopAuthors({Key? key}) : super(key: key);

  @override
  State<TopAuthors> createState() => _TopAuthorsState();
}

class _TopAuthorsState extends State<TopAuthors> {
  List<TopAuthorModel> topauthorList=[
    TopAuthorModel("@ronal_did", "Ronal", "assets/images/top1.png"),
    TopAuthorModel("@john_gee", "Keep Sam", "assets/images/top2.png"),
    TopAuthorModel("@ronal_did", "Ronal", "assets/images/top3.png"),
    TopAuthorModel("@john_gee", "Keep Sam", "assets/images/top4.png"),
    TopAuthorModel("@john_gee", "Keep Sam", "assets/images/top5.png"),
    TopAuthorModel("@ronal_did", "Ronal", "assets/images/top1.png"),
    TopAuthorModel("@john_gee", "Keep Sam", "assets/images/top2.png"),
    TopAuthorModel("@ronal_did", "Ronal", "assets/images/top3.png"),

  ];

  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
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
        title: customTextBold(title: "Top Authors",fontSize: MySize.size18),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
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

                SizedBox(height: MySize.size20,),

            ListView.builder(
              itemCount: topauthorList.length,
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
              return GestureDetector(
                  onTap: (){
                    Get.to(()=>TopAuthorProfile(b: topauthorList[index],));
                  },
                  child: TopAuthorPart(b: topauthorList[index],));
            }),

            ],
          ),
        ),
      ),
    );
  }
}

class TopAuthorPart extends StatefulWidget {
   TopAuthorPart({Key? key,required this.b}) : super(key: key);

   final TopAuthorModel b;

  @override
  State<TopAuthorPart> createState() => _TopAuthorPartState();
}

class _TopAuthorPartState extends State<TopAuthorPart> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: MySize.size110,
            width: MySize.scaleFactorWidth*103,
            decoration: BoxDecoration(
                color: AppColors.themecolor.withOpacity(0.06),
                // boxShadow: [
                //   BoxShadow(
                //       color: AppColors.black.withOpacity(0.25),
                //       spreadRadius: 0,
                //       blurRadius: 4,
                //       offset: Offset(0,2)
                //   )
                // ],
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(widget.b.image),
                    fit: BoxFit.fill,
                )
            ),
          ),

          SizedBox(width: MySize.size15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextRegular(title:widget.b.title,fontSize: MySize.size18,color: AppColors.blue42,fontWeight: FontWeight.w500),
              customTextRegular(title:widget.b.subtitle,fontSize: MySize.size14,color: AppColors.grey97,fontWeight: FontWeight.w500),

            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: (){
              setState(() {
                isChecked =! isChecked;
              });
            },
            child: Container(
              height: MySize.size34,
              width: MySize.scaleFactorWidth*88,
              decoration: BoxDecoration(
                color: isChecked? AppColors.themecolor: AppColors.greyf3,
                borderRadius: BorderRadius.circular(6),
              ),
              child:Center(child: customTextRegular(title: isChecked? "Follow": "Following",fontSize: MySize.size12,color: isChecked? AppColors.white: AppColors.themecolor,fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
    );
  }
}
