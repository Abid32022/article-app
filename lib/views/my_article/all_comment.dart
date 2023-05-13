import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/all_comment.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/my_article/article_detail.dart';

import '../../model/article_model.dart';
import '../../widgets/text_widget.dart';
class AllComment extends StatefulWidget {
  const AllComment({Key? key}) : super(key: key);

  @override
  State<AllComment> createState() => _AllCommentState();
}
// List<ArticleModel> mostpopularList=[
//
//   ArticleModel("assets/images/most1.png", "10 ways to become a UX designer",            "Watson Jeep", "assets/images/d2.png", "2d ago"),
//   ArticleModel("assets/images/myarticle4.png", "How can you manage your lifestyle",      "Watson Jeep", "assets/images/d3.png", "2d ago"),
//   ArticleModel("assets/images/myarticle2.png", "Best instruction for famers to farming",   "Watson Jeep", "assets/images/d4.png", "2d ago"),
//   ArticleModel("assets/images/myarticle3.png", "Why Technology is growing day by day",    "Watson Jeep", "assets/images/d5.png", "2d ago"),
//   ArticleModel("assets/images/myarticle4.png", "Why Technology is growing day by day",   "James Torint", "assets/images/d6.png", "2d ago"),
//   ArticleModel("assets/images/most1.png", "Safe Drive is very important for living",      "Watson Jeep", "assets/images/d2.png", "2d ago"),
// //];

class _AllCommentState extends State<AllComment> {
      List<AllCommentModel>allcommentList=[
        AllCommentModel("assets/images/most1.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
        AllCommentModel("assets/images/myarticle4.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
        AllCommentModel("assets/images/myarticle2.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
        AllCommentModel("assets/images/myarticle3.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
        AllCommentModel("assets/images/myarticle4.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
        AllCommentModel("assets/images/most1.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
        title: customTextBold(title: "All Comments ", fontSize: MySize.size18),
       
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              ListView.builder(
                itemCount: allcommentList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: DetailArticlePart(b: allcommentList[index]),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

