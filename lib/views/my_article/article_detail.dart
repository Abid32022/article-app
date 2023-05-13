import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/article_model.dart';
import 'package:project1/utils/app_const.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/my_article/all_comment.dart';
import 'package:project1/views/my_article/create_article.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/text_widget.dart';
import 'package:readmore/readmore.dart';

import '../../model/all_comment.dart';
import '../../utils/app_colors.dart';

class ArticleDetail extends StatefulWidget {
   ArticleDetail({Key? key,required this.b}) : super(key: key);
  final ArticleModel b;

  @override
  State<ArticleDetail> createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  List<AllCommentModel>allcommentList=[
    AllCommentModel("assets/images/most1.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
    AllCommentModel("assets/images/myarticle4.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
    AllCommentModel("assets/images/myarticle2.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
    AllCommentModel("assets/images/myarticle3.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
    AllCommentModel("assets/images/myarticle4.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
    AllCommentModel("assets/images/most1.png", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis . ", "Gorbar Nesit", "2d", "340"),
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
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: customTextBold(title: "Article Details", fontSize: MySize.size18),
        actions: [
          Icon(Icons.more_horiz_outlined,color: Colors.grey,),
          SizedBox(width: MySize.size10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                height: MySize.scaleFactorHeight*261,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(widget.b.images),
                    fit: BoxFit.cover,
                  )
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: MySize.size25,
                      width: MySize.size25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:AppColors.black.withOpacity(0.30),
                      ),
                      child:   GestureDetector(
                          onTap: (){
                            setState(() {
                              isChecked =!isChecked;
                            });
                          },
                          child: Icon( isChecked? Icons.bookmark: Icons.bookmark_border_outlined,color: AppColors.white,size: 16,)),


                    ),
                  ],
                ),
              ),
              SizedBox(height: MySize.size15,),
              Row(
                children: [
                  Container(
                    height: MySize.size30,
                    width: MySize.size30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/art1.png"),
                        fit: BoxFit.fill,
                      )
                    ),
                  ),
                  SizedBox(width: MySize.size15,),
                  Container(
                 //   color: Colors.red,
                      width: MySize.size300,
                      child: customTextBold(title: widget.b.title, fontSize: MySize.size18,fontWeight: FontWeight.w600,color: AppColors.blue63)),
                ],
              ),
              SizedBox(height: MySize.size14,),
              Row(
                children: [
                  SizedBox(width: MySize.size42,),
                  Image.asset("assets/icons/b6.png",height: MySize.size12,width: MySize.size12,color: AppColors.themecolor,),
                  SizedBox(width: MySize.size10,),
                  customTextRegular(title: widget.b.avatartitle, fontSize: MySize.size12,fontWeight: FontWeight.w500,color: AppColors.grey63),
                  SizedBox(width: MySize.size10,),
                  Image.asset("assets/icons/bluecircle.png",height: MySize.size12,width: MySize.size12,color: Colors.blue,),
                  SizedBox(width: MySize.size6,),
                  customTextRegular(title: widget.b.day, fontSize: MySize.size12,fontWeight: FontWeight.w500,color: AppColors.grey63),
                ],
              ),
              SizedBox(height: MySize.size16,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isChecked =!isChecked;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(left: 40),
                  height: MySize.size34,
                  width: MySize.scaleFactorWidth*124,
                  decoration: BoxDecoration(
                    color:   isChecked ? AppColors.themecolor: AppColors.greyf3,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child:Center(child: customTextRegular(title: isChecked? "Follow": "Following",fontSize: MySize.size12,color:isChecked?  AppColors.white:AppColors.themecolor ,fontWeight: FontWeight.w700)),
                ),
              ),
              SizedBox(height: MySize.size36,),
               customTextRegular(title:  "What is Education?",fontSize: MySize.size16,color: AppColors.blue3d,fontWeight: FontWeight.w700),
              SizedBox(height: MySize.size10,),
             // customTextRegular(title: AppConst. aboutus,fontSize: MySize.size12,color: AppColors.grey999,fontWeight: FontWeight.w700),
        ReadMoreText(
          AppConst. aboutus,
          trimLines: 4,
          style: TextStyle(fontSize: MySize.size12, fontWeight: FontWeight.w500,color: AppColors.grey63,height: 1.7,fontFamily: 'Montserrat-RegularBold'),

          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',

          lessStyle:TextStyle(fontSize: MySize.size14, fontWeight: FontWeight.bold,color: AppColors.themecolor),
          moreStyle: TextStyle(fontSize: MySize.size14, fontWeight: FontWeight.bold,color: AppColors.themecolor),
        ),
             SizedBox(height: MySize.size25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customTextBold(title:  "Comments",fontSize: MySize.size14,color: AppColors.blue3d,fontWeight: FontWeight.w500),
                GestureDetector(
                  onTap: (){
                    Get.to(()=> AllComment());
                  },
                    child: customTextRegular(title:  "View more",fontSize: MySize.size12,color: AppColors.themecolor,fontWeight: FontWeight.w700)),

              ],
            ),
              SizedBox(height: MySize.size15,),

                ListView.builder(
                    itemCount: 1,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                  return   DetailArticlePart(b: allcommentList[index]);

                }),

              SizedBox(height: MySize.size40,),
              customTextBold(title:  "Add Comment",fontSize: MySize.size14,color: AppColors.blue42,fontWeight: FontWeight.w600),
              SizedBox(height: MySize.size10,),
              Container(
              //  padding: EdgeInsets.symmetric(horizontal: 20),
                width: Get.width,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        // width: MySize.size300,
                          child: textField(hintText: "Type a comment...",bordercolor: AppColors.greyea,fillcolor: AppColors.white,filled: true,fontColor: AppColors.black.withOpacity(0.24))),
                    ),
                    SizedBox(width: MySize.size20,),
                    Container(
                      height: MySize.size56,
                      width: MySize.size56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.white,
                        border: Border.all(color: AppColors.greyea)
                      ),
                      child: Center(child: Image.asset("assets/icons/send.png",height: MySize.size18,width: MySize.size18,)),

                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class DetailArticlePart extends StatefulWidget {
   DetailArticlePart({Key? key,required this.b}) : super(key: key);
 final AllCommentModel b;
  @override
  State<DetailArticlePart> createState() => _DetailArticlePartState();
}

class _DetailArticlePartState extends State<DetailArticlePart> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.symmetric(horizontal: 21,vertical: 10),
        height: MySize.scaleFactorHeight*128,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColors.themecolor.withOpacity(0.06),
          borderRadius: BorderRadius.circular(12),

        ),
        child: Row(
          children: [

            Container(
              height: MySize.size100,
              width: MySize.size64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(widget.b.images),
                    fit: BoxFit.fill
                ),
              ),
            ),

            SizedBox(width: MySize.size15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    customTextBold(title:  widget.b.title,fontSize: MySize.size16,color: AppColors.blue42,fontWeight: FontWeight.w600),
                    SizedBox(width: MySize.size10,),
                    customTextRegular(title:  widget.b.days,fontSize: MySize.size10,color: AppColors.greyab,fontWeight: FontWeight.w400),
                    SizedBox(width: MySize.size50,),
                    Icon(Icons.more_horiz_outlined,color: AppColors.greyab,),

                  ],
                ),
                //SizedBox(height: MySize.size5,),
                Container(
                  // color: Colors.red,
                    height: MySize.scaleFactorHeight*50,
                    width: MySize.size230,
                    child: customTextRegular(title:  widget.b.subtitle,fontSize: MySize.size12,color: AppColors.greyab,fontWeight: FontWeight.w400,)),
                SizedBox(height: MySize.size8,),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  width: MySize.size230,
                  //   color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: (){
                            setState(() {
                              isChecked =! isChecked;
                            });
                          },
                          child: Image.asset("assets/icons/heart.png",height: MySize.size18,width: MySize.size18,color: isChecked? AppColors.black.withOpacity(0.20): AppColors.red26)),
                      customTextRegular(title:  widget.b.likes,fontSize: MySize.size10,color: AppColors.greyab,fontWeight: FontWeight.w400),


                    ],
                  ),
                ),
              ],
            ),
          ],
        ),

      );
  }
}
