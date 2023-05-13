import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/app_const.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/widgets/text_widget.dart';
class Faqs extends StatelessWidget {
   Faqs({Key? key}) : super(key: key);
  List<String> faqsList=[
    "How to Use this app?",
    "Does this app secure for me?",
    "How to manage settings?",
    "Can I share my media?",
    "What if i can’t access authors?",
    "What If I lost my account?",
    "Can I recover my deleted articles? ",
    "What is the main focus in this app",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bagroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.bagroundColor,
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        title: customTextBold(title: "FAQS",fontSize: MySize.size18),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: MySize.size20,),
              ListView.builder(
                  itemCount: faqsList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Expension(title: faqsList[index]),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class Expension extends StatefulWidget {
   Expension({Key? key,required this.title}) : super(key: key);
  String  title;
  @override
  State<Expension> createState() => _ExpensionState();
}

class _ExpensionState extends State<Expension> {

  bool icon = true;
  @override
  Widget build(BuildContext context) {
    return
      Theme(
      data: Theme.of(context).copyWith(
        appBarTheme: AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        unselectedWidgetColor: Colors.white,
        colorScheme: const ColorScheme.light(
        ),
        dividerColor: Colors.white10,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color:  AppColors.themecolor.withOpacity(0.05),
            borderRadius: BorderRadius.circular(8),

        ),
        child: ExpansionTile(
          initiallyExpanded: false,
          trailing:  Icon  ( icon?  Icons.keyboard_arrow_up_rounded:Icons.keyboard_arrow_down_rounded,color: AppColors.grey3f,),
          onExpansionChanged: (bool expanded){
            setState(() {
              icon = expanded;
            });
          },
          tilePadding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          childrenPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
          title: Container(
              child:
              customTextRegular(title:widget.title,fontSize:MySize.size14,fontWeight: FontWeight.w400,color: AppColors.black  ),
          ),
          children: [
            Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                 width: Get.width,
                 decoration: BoxDecoration(
                    color:  AppColors.themecolor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(8),

                ),
                child:Column(
                  children: [
                         customTextRegular(title:AppConst.loremipsum,fontSize:MySize.size14,fontWeight: FontWeight.w400,color: Colors.grey  ),

                    SizedBox(height: MySize.size10,),
                  ],
                )),


          ],
        ),
      ),
    );
  }
}
