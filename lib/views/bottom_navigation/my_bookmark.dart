import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/bookmark.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/text_widget.dart';
class MyBookMark extends StatefulWidget {
   MyBookMark({Key? key}) : super(key: key);

  @override
  State<MyBookMark> createState() => _MyBookMarkState();
}

class _MyBookMarkState extends State<MyBookMark> {
  List<BookMarkModel>bookmarkList=[
    BookMarkModel("The Power of Education and keys", "2d ago", "James Torint", "assets/images/d2.png", "assets/images/bookmark1.png"),
    BookMarkModel("Safe Driving is very important for liv..", "2d ago", "Selman Andera", "assets/images/d3.png", "assets/images/b2.png"),
    BookMarkModel("Why Technology is growing day...", "2d ago", "Helen Bast", "assets/images/d4.png", "assets/images/b3.png"),
    BookMarkModel("12 ways to improve your designing...", "2d ago", "Ghost Norman", "assets/images/d5.png", "assets/images/b4.png"),
  ];
    bool isChecked = false;

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
        title:
        customTextBold(title: "My Bookmark", fontSize: MySize.size18),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: MySize.size30,),
            textField(
                hintText: "Search..",
                fillcolor: AppColors.greyd8.withOpacity(0.20),
                filled: true,
                fontSize: MySize.size16,
                fontColor: AppColors.greyc9,
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
            Container(
              child: Expanded(
                child: GridView.builder(
                    //padding: EdgeInsets.symmetric(horizontal: 22),
                    itemCount:bookmarkList.length,
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 240,
                      childAspectRatio: 3/4,
                      mainAxisSpacing: 10,
                    ), itemBuilder: (context,index){
                  return MyBookPart(b: bookmarkList[index],);

                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyBookPart extends StatefulWidget {
   MyBookPart({Key? key,required this.b}) : super(key: key);
  final BookMarkModel b;
  @override
  State<MyBookPart> createState() => _MyBookPartState();
}

class _MyBookPartState extends State<MyBookPart> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return  Container(
      // margin: EdgeInsets.symmetric(horizontal: 15),
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
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            height: MySize.scaleFactorHeight*174,
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(widget.b.images),
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
                      child: GestureDetector(
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
          customTextBold(title: widget.b.title,fontSize: MySize.size16,color: AppColors.blue42),
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
                      image: AssetImage(widget.b.avatrimg),
                      fit: BoxFit.fill,
                    )
                ),
              ),
              SizedBox(width: MySize.size8,),
              customTextRegular(title:widget.b.avatartitle,fontSize: MySize.size12,color: AppColors.themecolor),
              SizedBox(width: MySize.size5,),
              customTextRegular(title: widget.b.day,fontSize: MySize.size12,color: AppColors.greyab),
              Spacer(),
              Icon(Icons.more_horiz_outlined,color: AppColors.greyab,),
              SizedBox(width: MySize.size20,),
            ],
          ),
          SizedBox(width: MySize.size20,),

        ],
      ),
    );
  }
}
