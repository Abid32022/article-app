import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/model/article_model.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/my_article/article_detail.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/text_widget.dart';
class
MyArticle extends StatefulWidget {
  const MyArticle({Key? key}) : super(key: key);

  @override
  State<MyArticle> createState() => _MyArticleState();
}

class _MyArticleState extends State<MyArticle> with TickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor:AppColors.bagroundColor,
      body: Container(
        color: AppColors.bagroundColor,
        padding: EdgeInsets.symmetric(horizontal: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MySize.size40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back)
                ),
                Text("My Article",style: TextStyle(fontSize: MySize.size18,fontWeight: FontWeight.w700,color: AppColors.black121,),),
                SizedBox(),
              ],
            ),
            SizedBox(height: MySize.size20,),
            Container(
              child: TabBar(
                // padding: EdgeInsets.only(left1: 10),
                labelPadding: EdgeInsets.only(right: 30,),
                dividerColor: Colors.transparent,
                indicatorColor: null,
                labelColor: Colors.blueAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                onTap: (a){
                  setState(() {
                  });
                },
                isScrollable: true,
                controller: tabController,
                unselectedLabelColor: Colors.amber,
                indicator: PointTabIndicator(
                  insets: EdgeInsets.only(right: 30,bottom: 5),
                  position: PointTabIndicatorPosition.bottom,
                  color: AppColors.themecolor,
                  //  insets: EdgeInsets.only(bottom: 6),
                ),
                tabs: [
                  Tab(child: customTextBold(title: "Draft (45)",fontSize: MySize.size14,color: tabController.index == 0? AppColors.themecolor:  AppColors.grey63),),
                  Tab(child: customTextBold(title: "About me",fontSize: MySize.size14,color: tabController.index == 1? AppColors.themecolor:  AppColors.grey63),),
                ],
              ),
            ),
            SizedBox(height: MySize.size20,),
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
            SizedBox(height: MySize.size20,),
            Text("Today",style: TextStyle(fontSize: MySize.size16,fontWeight: FontWeight.w600,color: AppColors.blue3d,),),
            SizedBox(height: MySize.size10,),
            Expanded(
              child: TabBarView(
                  controller: tabController,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    MyArticlePart(),

                          MyArticlePart(),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
class MyArticlePart extends StatefulWidget {
  const MyArticlePart({Key? key}) : super(key: key);

  @override
  State<MyArticlePart> createState() => _MyArticlePartState();
}

class _MyArticlePartState extends State<MyArticlePart> {

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
    return Container(
      color: AppColors.bagroundColor,
      child: ListView.builder(
          itemCount: mostpopularList.length,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (context,index){
            return
              GestureDetector(
                onTap: (){
                  Get.to(()=> ArticleDetail(b:mostpopularList[index] ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    //color: Colors.red,
                    color: Color(0xffDF9509).withOpacity(0.06),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff000000).withOpacity(0.010),
                          spreadRadius: 0,
                          blurRadius: 12,
                          offset: Offset(0,2)
                      )
                    ],
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
                              child: Image.asset(mostpopularList[index].images),
                            ),
                            SizedBox(width: MySize.size10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: MySize.size6,),
                                Container(
                                  width: MySize.size180,
                                  child: customTextBold(title: "How can you manage your lifestyle",fontSize: MySize.size14,color: AppColors.blue42),),

                                SizedBox(height: MySize.size5,),
                                Row(
                                  children: [
                                    customTextRegular(title: "You",fontSize: MySize.size12,color: AppColors.themecolor),
                                    SizedBox(width: MySize.size10,),
                                    customTextRegular(title: "2d ago",fontSize: MySize.size12,color: AppColors.grey999),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Icon(Icons.more_horiz_outlined,color: AppColors.greyc9,),
                                SizedBox(height: MySize.size5,),
                                Image.asset("assets/icons/myarticle11.png",height: MySize.size26,width: MySize.size26,),

                              ],
                            ),
                            SizedBox(width: MySize.size10,),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              );
          }),

    );
  }
}


///
///Container(
