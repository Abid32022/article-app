import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/bottom_navigation/home_screen/home_screen.dart';
import 'package:project1/views/bottom_navigation/home_screen/home_screen_parts.dart';
import 'package:project1/views/bottom_navigation/top_authors.dart';
import 'package:project1/widgets/text_widget.dart';

import '../../model/article_model.dart';
import '../../model/most_popular_model.dart';
class MostPopularScreen extends StatefulWidget {
  const MostPopularScreen({Key? key}) : super(key: key);

  @override
  State<MostPopularScreen> createState() => _MostPopularScreenState();
}
class _MostPopularScreenState extends State<MostPopularScreen> {

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
            onTap: () {
              Get.back();
            },
            child:  Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title:
        customTextBold(title: "Most Popular", fontSize: MySize.size18),
      ),
      body: ListView.builder(
          itemCount: mostpopularList.length,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (context,index){
            return MostPopularPart(b:mostpopularList[index],);
          }),
    );
  }
}
