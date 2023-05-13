import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/article_model.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/bottom_navigation/home_screen/home_screen.dart';
import 'package:project1/views/bottom_navigation/newarticle2.dart';
import 'package:project1/widgets/text_widget.dart';
class NewArticleScreen1 extends StatefulWidget {
  const NewArticleScreen1({Key? key}) : super(key: key);

  @override
  State<NewArticleScreen1> createState() => _NewArticleScreen1State();
}

class _NewArticleScreen1State extends State<NewArticleScreen1> {
      bool a = true;


  List<ArticleModel> newartileList=[
    ArticleModel("assets/images/homes1.png", "How your business can be growth", "Watson Jeep", "assets/images/myarticle2.png", "2d ago"),
    ArticleModel("assets/images/myarticle1.png", "Checkup your self at every month", "James Torint", "assets/images/art1.png", "2d ago"),
    ArticleModel("assets/images/myarticle3.png", "Make mind of adults for education", "Watson Jeep", "assets/images/author.png", "2d ago"),
    ArticleModel("assets/images/myarticle4.png", "Some Guidelines for travelers..", "Watson Jeep", "assets/images/myarticle2.png", "2d ago"),
    ArticleModel("assets/images/newarti5.png", "Setup your daily life on time table", "Watson Jeep", "assets/images/homes.png", "2d ago"),
    ArticleModel("assets/images/newarti6.png", "Skip the uses of mobile phone more", "Watson Jeep", "assets/images/homes1.png", "2d ago"),
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
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title:
        customTextBold(title: "New Articles", fontSize: MySize.size18),
        actions: [
          GestureDetector(
            onTap: (){
              setState(() {
                a =! a;
              });
            },
              child: Icon(a? Icons.grid_4x4:Icons.list,size: 20,)


          ),
          SizedBox(
            width: MySize.size20,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),

        color: AppColors.bagroundColor,
        child: Column(
          children: [

            a?  Container(
              child: Expanded(
                child: GridView.builder(
                      itemCount:newartileList.length,
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 220,
                      childAspectRatio: 3/4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ), itemBuilder: (context,index){
                  return GestureDetector(
                      onTap: (){
                        Get.to(()=>NewArticleScreen2());
                      },
                      child: NewArticleGrid(b: newartileList[index],));
                }),
              ),
            )
             : Expanded(
                  child: ListView.builder(
                    itemCount: newartileList.length,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: NewArticleGrid( b: newartileList[index]
                      ),
                    );}))


          ],
        ),
      ),
    );
  }
}

class NewArticleGrid extends StatefulWidget {
   NewArticleGrid({Key? key,required this.b}) : super(key: key);
  final ArticleModel b;

  @override
  State<NewArticleGrid> createState() => _NewArticleGridState();
}

class _NewArticleGridState extends State<NewArticleGrid> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Container(
     // margin: EdgeInsets.symmetric(horizontal: 10),
      height: MySize.scaleFactorHeight*237,
      //width: MySize.scaleFactorHeight*184,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(widget.b.images),
            fit: BoxFit.cover,
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
                  child:
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          isChecked =!isChecked;
                        });
                      },
                      child: Icon( isChecked? Icons.bookmark: Icons.bookmark_border_outlined,color: AppColors.white,size: 16,)),

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
                customTextRegular(title: widget.b.avatartitle,fontSize: MySize.size10,color: AppColors.white),
                SizedBox(width: MySize.size5,),
                customTextRegular(title: widget.b.day,fontSize: MySize.size10,color: AppColors.greyab),
              ],
            ),
            SizedBox(height: MySize.size15,),
          ],
        ),
      ),
    );
  }
}
