import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/most_popular_model.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/app_const.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/bottom_navigation/home_screen/home_screen_parts.dart';
import 'package:project1/widgets/text_widget.dart';

import '../../model/article_model.dart';
import '../../model/top_authors.dart';
class TopAuthorProfile extends StatefulWidget {
   TopAuthorProfile({Key? key,required this.b}) : super(key: key);

  final TopAuthorModel b;

  @override
  State<TopAuthorProfile> createState() => _TopAuthorProfileState();
}

class _TopAuthorProfileState extends State<TopAuthorProfile> {

  List<ArticleModel> mostpopularList=[
    ArticleModel("assets/images/most1.png", "10 ways to become a UX designer",            "Watson Jeep", "assets/images/d2.png", "2d ago"),
    ArticleModel("assets/images/myarticle4.png", "How can you manage your lifestyle",      "Watson Jeep", "assets/images/d3.png", "2d ago"),
    ArticleModel("assets/images/myarticle2.png", "Best instruction for famers to farming",   "Watson Jeep", "assets/images/d4.png", "2d ago"),
    ArticleModel("assets/images/myarticle3.png", "Why Technology is growing day by day",    "Watson Jeep", "assets/images/d5.png", "2d ago"),
    ArticleModel("assets/images/myarticle4.png", "Why Technology is growing day by day",   "James Torint", "assets/images/d6.png", "2d ago"),
    ArticleModel("assets/images/most1.png", "Safe Drive is very important for living",      "Watson Jeep", "assets/images/d2.png", "2d ago"),
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
        title: customTextBold(title: "Top Authors",fontSize: MySize.size18),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MySize.size30,),
                  Container(
                    padding: EdgeInsets.all(1),
                    height: MySize.size110,
                    width: MySize.scaleFactorWidth*103,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.red,width: 1),
                        borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       border: Border.all(color: Colors.white),
                       image: DecorationImage(
                         image: AssetImage(widget.b.image))
                       )
                     ),
                  ),
                  SizedBox(height: MySize.size12,),
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: widget.b.title,
                        style: TextStyle(fontWeight: FontWeight.w600,fontSize: MySize.size18,color: AppColors.blue42)
                      ),
                      WidgetSpan(child: SizedBox(width: MySize.size6,)),
                      TextSpan(
                          text: "USA",
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: MySize.size10,color: AppColors.greybb)
                      ),
                    ]
                  )),

                  customTextRegular(title: widget.b.subtitle,fontSize: MySize.size14,fontWeight: FontWeight.w400,color:AppColors.grey97),
                  SizedBox(height: MySize.size12,),
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "711",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w700,color: AppColors.themecolor,fontFamily: 'Montserrat-Regular')),
                        WidgetSpan(child: SizedBox(width: MySize.size5,)),
                        TextSpan(text: " Following ",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w400,color: AppColors.black,fontFamily: 'Montserrat-Regular')),
                        TextSpan(text: "301",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w700,color: AppColors.themecolor,fontFamily: 'Montserrat-Regular')),
                        WidgetSpan(child: SizedBox(width: MySize.size5,)),
                        TextSpan(text: " Followers  ",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w400,color: AppColors.black,fontFamily: 'Montserrat-Regular')),
                        TextSpan(text: "240",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w700,color: AppColors.themecolor,fontFamily: 'Montserrat-Regular')),
                        WidgetSpan(child: SizedBox(width: MySize.size5,)),
                        TextSpan(text: " Articles ",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w400,color: AppColors.black,fontFamily: 'Montserrat-Regular')),
                      ]
                  )),
                      SizedBox(height: MySize.size15,),
                  customTextRegular(title: AppConst.topauthors,fontSize: MySize.size14,fontWeight: FontWeight.w400,color:AppColors.grey97),
                  SizedBox(height: MySize.size15,),

                  Row(
                    children: [
                      Image.asset("assets/icons/social1.png",height: MySize.size16,width: MySize.size16,),
                      SizedBox(width: MySize.size14,),
                      Image.asset("assets/icons/socail2.png",height: MySize.size16,width: MySize.size16,),
                      SizedBox(width: MySize.size14,),
                      Image.asset("assets/icons/socail3.png",height: MySize.size16,width: MySize.size16,),
                      SizedBox(width: MySize.size14,),
                      Image.asset("assets/icons/socail5.png",height: MySize.size16,width: MySize.size16,),
                      Spacer(),
                      Container(
                        height: MySize.size34,
                        width: MySize.scaleFactorWidth*88,
                        decoration: BoxDecoration(
                          color:  AppColors.themecolor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child:Center(child: customTextRegular(title:  "Follow",fontSize: MySize.size12,color: AppColors.white,fontWeight: FontWeight.w500)),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Divider(),
                SizedBox(height: MySize.size15,),
             Container(
                 padding: EdgeInsets.symmetric(horizontal: 15),
                 child: customTextRegular(title: "Articles",fontSize: MySize.size16,fontWeight: FontWeight.w600,color:AppColors.black)),
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                  return MostPopularPart(b: mostpopularList[index],);
                }),


          ],
        ),
      ),
    );
  }
}
