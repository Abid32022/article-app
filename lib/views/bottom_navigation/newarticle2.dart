import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/bottom_navigation/home_screen/home_screen.dart';
import 'package:project1/widgets/text_widget.dart';
class NewArticleScreen2 extends StatefulWidget {
  const NewArticleScreen2({Key? key}) : super(key: key);

  @override
  State<NewArticleScreen2> createState() => _NewArticleScreen2State();
}

class _NewArticleScreen2State extends State<NewArticleScreen2> {
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
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title:
        customTextBold(title: "New Articles", fontSize: MySize.size18),
      ),
      body:
      Container(
        color: AppColors.bagroundColor,
        child: Column(
          children: [
            SizedBox(height: MySize.size30,),

            Container(
              child: Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 22),
                    itemCount:6,
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 170,
                      childAspectRatio: 3/4,
                      mainAxisSpacing: 10,
                    ), itemBuilder: (context,index){
                  return NewArticleGrid();
                }),
              ),
            )

          ],
        ),
      ),
    );
  }
}

class NewArticleGrid extends StatefulWidget {
  const NewArticleGrid({Key? key}) : super(key: key);

  @override
  State<NewArticleGrid> createState() => _NewArticleGridState();
}

class _NewArticleGridState extends State<NewArticleGrid> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MySize.scaleFactorHeight*237,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("assets/images/ar1.png"),
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
                  child: Center(child: Image.asset("assets/icons/bookmar.png",height: MySize.size14,width: MySize.size14,)),
                ),
              ],
            ),
            Spacer(),
            customTextBold(title: "How your business can be growth",fontSize: MySize.size14,color: AppColors.white),
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
                        image: AssetImage("assets/images/myarticle1.png"),
                        fit: BoxFit.fill,
                      )
                  ),
                ),
                SizedBox(width: MySize.size8,),
                customTextRegular(title: "Watson Jeep",fontSize: MySize.size10,color: AppColors.white),
                SizedBox(width: MySize.size5,),
                customTextRegular(title: "2d ago",fontSize: MySize.size10,color: AppColors.greyab),
              ],
            ),
            SizedBox(height: MySize.size15,),
          ],
        ),
      ),
    );
  }
}
