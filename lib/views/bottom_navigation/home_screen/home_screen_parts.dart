import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/explore_by_topics.dart';
import 'package:project1/model/most_popular_model.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/views/bottom_navigation/new_article1.dart';
import 'package:project1/widgets/text_widget.dart';
import '../../../model/article_model.dart';
import '../../../utils/my_size.dart';

class NewArticlesPart extends StatefulWidget {
   NewArticlesPart({Key? key,required this.b}) : super(key: key);
  final ArticleModel b;
  @override
  State<NewArticlesPart> createState() => _NewArticlesPartState();
}

class _NewArticlesPartState extends State<NewArticlesPart> {

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: MySize.scaleFactorHeight*237,
      width: MySize.scaleFactorHeight*184,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(widget.b.images),
            fit: BoxFit.fill,
          )
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          gradient: AppColors.blackgredient,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MySize.size10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MySize.size25,
                  width: MySize.size25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:AppColors.grey30,
                  ),
                  child: Center(child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isChecked =!isChecked;
                        });
                      },
                      child: Icon( isChecked? Icons.bookmark: Icons.bookmark_border_outlined,color: AppColors.white,size: 16,)),
                  ),
                ),
              ],
            ),
            Spacer(),
            customTextBold(title: widget.b.title,fontSize: MySize.size14,color: AppColors.white),
            SizedBox(height: MySize.size20,),

            Row(
              children: [
                Container(
                  height: MySize.size20,
                  width: MySize.size20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(widget.b.avatrimg),
                        fit: BoxFit.fill,
                      )
                  ),
                ),
                SizedBox(width: MySize.size8,),
                customTextRegular(title: widget.b.avatartitle,fontSize: MySize.size12,color: AppColors.white),
                SizedBox(width: MySize.size5,),
                customTextRegular(title: widget.b.day,fontSize: MySize.size12,color: AppColors.greyab),
              ],
            ),
            SizedBox(height: MySize.size15,),
          ],
        ),
      ),
    );
  }
}

class MostPopularPart extends StatefulWidget {
   MostPopularPart({Key? key,required this.b}) : super(key: key);
 final ArticleModel b;
  @override
  State<MostPopularPart> createState() => _MostPopularPartState();
}
class _MostPopularPartState extends State<MostPopularPart> {


  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: AppColors.themecolor.withOpacity(0.06),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(top: 15),
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            clipBehavior: Clip.none,
            margin: EdgeInsets.symmetric(horizontal: 2),
            height: MySize.scaleFactorHeight*112,
            width: Get.width,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(widget.b.images),
                ),
                SizedBox(width: MySize.size10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MySize.size6,),
                    Container(
                      width: MySize.size180,
                      child: customTextBold(title: widget.b.title,fontSize: MySize.size14,color: AppColors.blue42),),

                    SizedBox(height: MySize.size15,),
                    Row(
                      children: [
                        Container(
                          height: MySize.size20,
                          width: MySize.size20,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage( widget.b.avatrimg),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                        SizedBox(width: MySize.size8,),
                        customTextRegular(title: widget.b.avatartitle,fontSize: MySize.size12,color: AppColors.themecolor),
                        SizedBox(width: MySize.size5,),
                        customTextRegular(title: widget.b.day,fontSize: MySize.size10,color: AppColors.greyab),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Icon(Icons.more_horiz_outlined,color: AppColors.greyab,),
                    SizedBox(height: MySize.size5,),
                    Container(
                      height: MySize.size30,
                      width: MySize.size30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.themecolor),
                      child: Center(child: Image.asset("assets/icons/bookmar.png",height: MySize.size12,width: MySize.size12,)),
                    )
                  ],
                ),
                SizedBox(width: MySize.size10,),

              ],
            ),
          )

        ],
      ),
    );
  }
}


class ExploreByTopicPart extends StatefulWidget {
   ExploreByTopicPart({Key? key,required this.b}) : super(key: key);
  final ExploreTopicsModel b;

  @override
  State<ExploreByTopicPart> createState() => _ExploreByTopicPartState();
}

class _ExploreByTopicPartState extends State<ExploreByTopicPart> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=> NewArticleScreen1());
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(8),
        // height: MySize.scaleFactorHeight*115,
        width: MySize.size90,
        decoration: BoxDecoration(
          color: AppColors.themecolor.withOpacity(0.06),
          // boxShadow: [
          //   BoxShadow(
          //       color: AppColors.black.withOpacity(0.25),
          //       spreadRadius: 0,
          //       blurRadius: 2,
          //       offset: Offset(0,2)
          //   )
          // ],
          borderRadius: BorderRadius.circular(12),

        ),
        child: Column(
          children: [
            Container(
              height: MySize.size52,
              width: MySize.size76,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: AssetImage(widget.b.images),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            SizedBox(height: MySize.size12,),
            customTextBold(title: widget.b.title,fontSize: MySize.scaleFactorHeight*13,color: AppColors.blue42),
            customTextRegular(title: widget.b.subtitle,fontSize: MySize.size10,color: AppColors.blue42),
          ],
        ),
      ),
    );
  }
}