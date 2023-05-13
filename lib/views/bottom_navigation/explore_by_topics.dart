import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/explore_by_topics.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/widgets/text_widget.dart';
class ExploreByTopics extends StatefulWidget {
  const ExploreByTopics({Key? key}) : super(key: key);

  @override
  State<ExploreByTopics> createState() => _ExploreByTopicsState();
}

class _ExploreByTopicsState extends State<ExploreByTopics> {
  List<ExploreTopicsModel>exploreList=[
    ExploreTopicsModel("assets/images/E1.png", "Travel", "(20,243)"),
    ExploreTopicsModel("assets/images/explore1.png", "Health", "(20,122)"),
    ExploreTopicsModel("assets/images/explore2.png", "Science", "(20,321)"),
    ExploreTopicsModel("assets/images/E1.png", "Economy", "(20,243)"),
    ExploreTopicsModel("assets/images/exp1.png", "Food", "(20,122)"),
    ExploreTopicsModel("assets/images/exp3.png", "Drinks", "(20,321)"),
    ExploreTopicsModel("assets/images/exp4.png", "Sport", "(20,321)"),
    ExploreTopicsModel("assets/images/exp5.png", "LifeStyle", "(20,321)"),
    ExploreTopicsModel("assets/images/exp6.png", "Education", "(20,321)"),
    ExploreTopicsModel("assets/images/exp7.png", "Business", "(20,321)"),
    ExploreTopicsModel("assets/images/exp8.png", "Music", "(20,321)"),
    ExploreTopicsModel("assets/images/E1.png", "Travel", "(20,243)"),
    ExploreTopicsModel("assets/images/explore1.png", "Health", "(20,122)"),
    ExploreTopicsModel("assets/images/explore2.png", "Science", "(20,321)"),
    ExploreTopicsModel("assets/images/E1.png", "Economy", "(20,243)"),
    ExploreTopicsModel("assets/images/exp1.png", "Food", "(20,122)"),
    ExploreTopicsModel("assets/images/exp3.png", "Drinks", "(20,321)"),
    ExploreTopicsModel("assets/images/exp6.png", "Education", "(20,321)"),
  ];

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
        title: customTextBold(title: "Explore by Topics", fontSize: MySize.size18),
      ),
      body: Container(
        color: AppColors.bagroundColor,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: exploreList.length,
                shrinkWrap: true,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 4),
                  physics: AlwaysScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                mainAxisExtent: 120,
                childAspectRatio: 4/5,
              ), itemBuilder: (context,index){
                return  Container(
                //  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  //  height: MySize.scaleFactorHeight*128,
                  width: MySize.size100,
                  decoration: BoxDecoration(
                    color: AppColors.themecolor.withOpacity(0.06),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: AppColors.black.withOpacity(0.25),
                    //       spreadRadius: 0,
                    //       blurRadius: 4,
                    //       offset: Offset(0,2)
                    //   ),
                    // ],
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Column(
                    children: [
                      Container(
                        height: MySize.scaleFactorHeight*63,
                        width: MySize.scaleFactorWidth*84,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                                image: AssetImage(exploreList[index].images),
                                fit: BoxFit.fill

                            )
                        ),
                      ),
                      SizedBox(height: MySize.size10,),
                      customTextBold(title: exploreList[index].title,fontSize: MySize.scaleFactorHeight*13,color: AppColors.blue42),
                      customTextRegular(title: exploreList[index].subtitle,fontSize: MySize.size12,color: AppColors.blue42),

                    ],
                  ),
                );
              }),
            )

          ],
        ),
      ),
    );
  }
}
