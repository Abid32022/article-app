import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/explore_by_topics.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/bottom_navigation/explore_by_topics.dart';
import 'package:project1/views/bottom_navigation/home_screen/home_screen_parts.dart';
import 'package:project1/views/bottom_navigation/most_popular.dart';
import 'package:project1/views/bottom_navigation/my_bookmark.dart';
import 'package:project1/views/bottom_navigation/new_article1.dart';
import 'package:project1/views/bottom_navigation/notification.dart';
import 'package:project1/views/bottom_navigation/top_authors.dart';
import 'package:project1/views/my_article/article_detail.dart';
import 'package:project1/widgets/custom_button.dart';
import 'package:project1/widgets/text_widget.dart';
import '../../../model/article_model.dart';
import '../../../model/top_authors.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<TopAuthorModel> topauthorList=[
    TopAuthorModel("@ronal_did", "Ronal", "assets/images/d2.png"),
    TopAuthorModel("@john_gee", "Keep Sam", "assets/images/d3.png"),
    TopAuthorModel("@ronal_did", "Ronal", "assets/images/d4.png"),
    TopAuthorModel("@john_gee", "Keep Sam", "assets/images/d3.png"),
  ];

  List<ArticleModel> mostpopularList=[
    ArticleModel("assets/images/most1.png", "10 ways to become a UX designer",            "Watson Jeep", "assets/images/d2.png", "2d ago"),
    ArticleModel("assets/images/myarticle4.png", "How can you manage your lifestyle",      "Watson Jeep", "assets/images/d3.png", "2d ago"),
    ArticleModel("assets/images/myarticle2.png", "Best instruction for famers to farming",   "Watson Jeep", "assets/images/d4.png", "2d ago"),
    ArticleModel("assets/images/myarticle3.png", "Why Technology is growing day by day",    "Watson Jeep", "assets/images/d5.png", "2d ago"),
    ArticleModel("assets/images/myarticle4.png", "Why Technology is growing day by day",   "James Torint", "assets/images/d6.png", "2d ago"),
    ArticleModel("assets/images/most1.png", "Safe Drive is very important for living",      "Watson Jeep", "assets/images/d2.png", "2d ago"),
  ];
  List<ArticleModel> newartileList=[
    ArticleModel("assets/images/homes1.png", "How your business can be growth", "Watson Jeep", "assets/images/myarticle2.png", "2d ago"),
    ArticleModel("assets/images/myarticle1.png", "How your business can be growth", "James Torint", "assets/images/art1.png", "2d ago"),
    ArticleModel("assets/images/myarticle3.png", "How your business can be growth", "Watson Jeep", "assets/images/author.png", "2d ago"),
    ArticleModel("assets/images/myarticle4.png", "How your business can be growth", "Watson Jeep", "assets/images/myarticle2.png", "2d ago"),
  ];
  List<ExploreTopicsModel>exploreList=[
    ExploreTopicsModel("assets/images/E1.png", "Travel", "(20,243)"),
    ExploreTopicsModel("assets/images/explore1.png", "Health", "(20,122)"),
    ExploreTopicsModel("assets/images/explore2.png", "Science", "(20,321)"),
    ExploreTopicsModel("assets/images/E1.png", "Travel", "(20,243)"),
    ExploreTopicsModel("assets/images/explore1.png", "Health", "(20,122)"),
    ExploreTopicsModel("assets/images/explore2.png", "Science", "(20,321)"),
  ];

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.bagroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.bagroundColor,
        leading: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: MySize.scaleFactorHeight*45,
          width: MySize.scaleFactorHeight*45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/homes.png"),
            )
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextRegular(title: "Welcome!",fontSize: MySize.size12,color: AppColors.grey999),
            customTextBold(title: "John Seman",fontSize: MySize.size16,color: AppColors.blue4b),
          ],
        ),
        actions: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                  onTap: (){
                    Get.to(()=>NotificationScreen());
                  },
                  child: Image.asset("assets/icons/bell.png",height: MySize.size24,width: MySize.size24,)),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Container(
                    height: MySize.size8,
                    width: MySize.size8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.themecolor
                    ),
                  ),
                ),
              )
            ],
          ),
       SizedBox(width: MySize.size10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
         // padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySize.size20,),
              Container(
                 margin: EdgeInsets.symmetric(horizontal: 15),
                height: MySize.scaleFactorHeight*176,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: AppColors.orange1
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/badg1.png",width: MySize.scaleFactorWidth*150,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: MySize.size40,),
                        customTextBold(title: "Special for you",fontSize: MySize.size10,color: AppColors.white),
                        SizedBox(height: MySize.size10,),
                        Container(
                          height: MySize.size60,
                          width: MySize.size200,
                            child: customTextBold(title: "explore some tips & Tracks to become Good AUTHOR",fontSize: MySize.size14,color: AppColors.white)),
                      SizedBox(height: MySize.size10,),
                        custombutton2(height: MySize.size20,width: MySize.size72,buttonColor: AppColors.blue4b,borderRadius: 6,
                            text: "Read More",fontColor: AppColors.white,fontSize: MySize.size8),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: MySize.size20,),
            Row(
              children: [
                SizedBox(width: MySize.size15,),
                customTextBold(title: "New Articles",fontSize: MySize.size14,color: AppColors.blue4b),
                Spacer(),
                GestureDetector(
                    onTap: (){
                      Get.to(()=>NewArticleScreen1());
                    },
                    child: customTextBold(title: "View more",fontSize: MySize.size12,color: AppColors.themecolor)),
                SizedBox(width: MySize.size15,),
              ],
            ),
              SizedBox(height: MySize.size20,),
             Container(
              height: MySize.scaleFactorHeight*237,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 0),
                  itemCount: newartileList.length,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index){
                  return  GestureDetector(
                      onTap: (){
                      Get.to(()=> ArticleDetail(b: newartileList[index]));
                      },
                      child: NewArticlesPart(b: newartileList[index],));

              }),
            ),
              SizedBox(height: MySize.size20,),
              Row(
                    children: [
                  SizedBox(width: MySize.size15,),
                  customTextBold(title: "Most Popular",fontSize: MySize.size14,color: AppColors.blue4b),
                 Spacer(),
                  GestureDetector(
                      onTap: (){
                        Get.to(()=>MostPopularScreen());
                      },
                      child: customTextBold(title: "View more",fontSize: MySize.size12,color: AppColors.themecolor)),
                  SizedBox(width: MySize.size15,),
                ],
              ),
              SizedBox(height: MySize.size6,),
          ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                return GestureDetector(
                    onTap: (){
                      Get.to(()=> ArticleDetail(b: mostpopularList[index]));
                    },
                    child: MostPopularPart(b: mostpopularList[index],));
              }),
              SizedBox(height: MySize.size20,),
              Row(
                children: [
                  SizedBox(width: MySize.size15,),
                  customTextBold(title: "Explore by Topics ",fontSize: MySize.size14,color: AppColors.blue4b),
                 Spacer(),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=>ExploreByTopics());
                    },
                      child: customTextBold(title: "View more",fontSize: MySize.size12,color: AppColors.themecolor)),
                  SizedBox(width: MySize.size15,),
                ],
              ),
              SizedBox(height: MySize.size20,),
              Container(
                height: MySize.scaleFactorHeight*125,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: exploreList.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(1),
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context,index){
                  return ExploreByTopicPart(b: exploreList[index],);
                }),
              ),
              SizedBox(height: MySize.size20,),
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: MySize.size15,),
                  customTextBold(title: "Bookmark",fontSize: MySize.size14,color: AppColors.blue4b),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Get.to(()=>MyBookMark());
                      },
                      child: customTextBold(title: "View more",fontSize: MySize.size12,color: AppColors.themecolor)),
                  SizedBox(width: MySize.size15,),
                ],
              ),
              SizedBox(height: MySize.size20,),
             Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColors.bagroundColor,
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
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  height: MySize.scaleFactorHeight*174,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                    color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage("assets/images/bookmark1.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: MySize.size30,
                            width: MySize.size30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black.withOpacity(0.30)
                            ),
                            child:  GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isChecked =!isChecked;
                                  });
                                },
                                child: Icon( isChecked? Icons.bookmark: Icons.bookmark_border_outlined,color: AppColors.white,size: 16,)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MySize.size10,),
                customTextBold(title: "The Power of Education and keys",fontSize: MySize.size16,color: AppColors.blue42),
                SizedBox(height: MySize.size12,),
                Row(
                  children: [
                    SizedBox(width: MySize.size30,),
                    Container(
                      height: MySize.size20,
                      width: MySize.size20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/myarticle1.png"),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                    SizedBox(width: MySize.size8,),
                    customTextRegular(title: "James Torint",fontSize: MySize.size12,color: AppColors.themecolor),
                    SizedBox(width: MySize.size5,),
                    customTextRegular(title: "2d ago",fontSize: MySize.size12,color: AppColors.greyab),
                    Spacer(),
                    Icon(Icons.more_horiz_outlined,color: AppColors.greyab,),
                    SizedBox(width: MySize.size20,),
                  ],
                ),
               SizedBox(height: MySize.size10,),
              ],
            ),
          ),
              SizedBox(height: MySize.size20,),
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: MySize.size15,),
                  customTextBold(title: "Top Authors",fontSize: MySize.size14,color: AppColors.blue4b),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Get.to(()=> TopAuthors());
                      },
                      child: customTextBold(title: "View more",fontSize: MySize.size12,color: AppColors.themecolor)),
                  SizedBox(width: MySize.size15,),
                ],
              ),
              SizedBox(height: MySize.size20,),
                Container(
                  height: MySize.scaleFactorHeight*70,
                  child: ListView.builder(
                    itemCount: topauthorList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap:  true,
                      physics: AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context,index){
                    return   Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                      width: MySize.scaleFactorWidth*163,
                      decoration: BoxDecoration(
                        color: AppColors.themecolor.withOpacity(0.06),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: MySize.scaleFactorHeight*70,
                            width: MySize.scaleFactorHeight*70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(topauthorList[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: MySize.size10,),
                          Column(
                            children: [
                              SizedBox(height: MySize.size18,),
                              customTextBold(title: topauthorList[index].title,fontSize: MySize.scaleFactorHeight*13,color: AppColors.blue42),
                              customTextBold(title: topauthorList[index].subtitle,fontSize: MySize.size10,color: AppColors.grey97),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
                ),
              SizedBox(height: MySize.size40,),
            ],
          ),
        ),
      ),
    );
  }
}