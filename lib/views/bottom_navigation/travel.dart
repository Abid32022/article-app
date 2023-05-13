import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/article_model.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/bottom_navigation/home_screen/home_screen.dart';
import 'package:project1/views/bottom_navigation/home_screen/home_screen_parts.dart';
import 'package:project1/widgets/text_widget.dart';

import '../../model/most_popular_model.dart';
class Travel extends StatefulWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  List<ArticleModel> mostpopularList=[
    ArticleModel("2d ago", "Watson Jeep", "10 ways to become a UX designer", "assets/images/most1.png", "assets/images/d2.png"),
    ArticleModel("2d ago", "Watson Jeep", "How can you manage your lifestyle", "assets/images/myarticle4.png", "assets/images/d3.png"),
    ArticleModel("2d ago", "James Torint", "Best instruction for famers to farming", "assets/images/myarticle2.png", "assets/images/d3.png"),
    ArticleModel("2d ago", "Hees Naim", "Why Technology is growing day by day", "assets/images/myarticle3.png", "assets/images/d3.png"),
    ArticleModel("2d ago", "Kimran Nesal", "Safe Drive is very important for living", "assets/images/myarticle4.png", "assets/images/d3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: AppBar(
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
        customTextBold(title: "Travel", fontSize: MySize.size18),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: MySize.size30,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0,2)
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Column(
                  children: [
                    Container(
                      height: MySize.scaleFactorHeight*174,
                      width: Get.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("assets/images/bookmark1.png"),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                      SizedBox(height: MySize.size12,),


                      Row(
                     //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: MySize.size30,),
                          customTextBold(title: "Available",fontSize: MySize.size16,color: AppColors.themecolor),
                           Spacer(),
                          customTextRegular(title: "(20,243)",fontSize: MySize.size14,color: AppColors.blue42),
                          SizedBox(width: MySize.size30,),
                        ],
                      ),
                    SizedBox(height: MySize.size14,),
                  ],
                ),
              ),
              SizedBox(height: MySize.size17,),
              Column(
                children: [
                  Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: MySize.size15,),
                      customTextBold(title: "Sort By",fontSize: MySize.size16,color: AppColors.black121),
                      Spacer(),
                       Image.asset("assets/icons/leftrightarrow.png",height: MySize.size24,width: MySize.size24,),
                      SizedBox(width: MySize.size15,),
                    ],
                  ),
                  SizedBox(height: MySize.size17,),
                  ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index){
                        return MostPopularPart(b:mostpopularList[index],);
                      }),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
