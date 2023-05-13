import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import 'package:get/get.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/views/my_article/edit_profile.dart';
import 'package:project1/views/my_article/my_article.dart';

import '../../widgets/text_widget.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile>with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
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
        title: customTextBold(title: "Profile",fontSize: MySize.size18),
        actions: [
          GestureDetector(
              onTap: (){
                Get.to(()=>EditProfile());
              },
              child: Image.asset("assets/icons/action.png",height: MySize.size24,width: MySize.size24,)),
        SizedBox(width: MySize.size20,),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
           // padding: EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MySize.size30,),
                Container(
                  height: MySize.size96,
                  width: MySize.size96,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.red26),
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile1.png"),
                      fit: BoxFit.fill
                    )
                  ),

                ),
                  SizedBox(height: MySize.size10,),
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(text: "John Peter",style: TextStyle(fontSize: MySize.size18,fontWeight: FontWeight.w600,color: AppColors.black42)),
                     WidgetSpan(child: SizedBox(width: MySize.size5,)),
                      TextSpan(text: "USA",style: TextStyle(fontSize: MySize.size10,fontWeight: FontWeight.w500,color: AppColors.greybb)),

                    ]
                  )),
                  customTextRegular(title: "@sam_men",fontSize: MySize.size14,color: AppColors.grey97),
                  SizedBox(height: MySize.size12,),
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "711",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w400,color: AppColors.themecolor,fontFamily: 'Montserrat-Regular')),
                        WidgetSpan(child: SizedBox(width: MySize.size5,)),
                        TextSpan(text: " Following ",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w400,color: AppColors.black,fontFamily: 'Montserrat-Regular')),
                        TextSpan(text: "301",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w400,color: AppColors.themecolor,fontFamily: 'Montserrat-Regular')),
                        WidgetSpan(child: SizedBox(width: MySize.size5,)),
                        TextSpan(text: " Followers  ",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w400,color: AppColors.black,fontFamily: 'Montserrat-Regular')),
                        TextSpan(text: "240",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w400,color: AppColors.themecolor,fontFamily: 'Montserrat-Regular')),
                        WidgetSpan(child: SizedBox(width: MySize.size5,)),
                        TextSpan(text: " Articles ",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w400,color: AppColors.black,fontFamily: 'Montserrat-Regular')),
                      ]
                  )),
                  SizedBox(height: MySize.size30,),

                ],
              ),
            ),
          ),
          Divider(color: AppColors.greya5.withOpacity(0.35),thickness: 1,),
          SizedBox(height: MySize.size20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TabBar(
              labelPadding: EdgeInsets.only(right: 30,),
              dividerColor: Colors.transparent,
              indicatorColor: null,
              labelColor: Colors.white,
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
                 ),
              tabs: [
               Tab(child: customTextBold(title: "Draft (45)",fontSize: MySize.size14,color: tabController.index == 0? AppColors.themecolor:  AppColors.grey63),),
               Tab(child: customTextBold(title: "About me",fontSize: MySize.size14,color: tabController.index == 1? AppColors.themecolor:  AppColors.grey63),),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
                controller: tabController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MyArticlePart(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: PersonalInformation(),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            margin: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
            decoration: BoxDecoration(
                color:  AppColors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.themecolor.withOpacity(0.06),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0,2)
                  ),
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 customTextBold(title: "Pesonal Information",fontSize: MySize.size16,color: AppColors.black),
                SizedBox(height: MySize.size24,),
                customContainer(text: "johnpeter@gmail.com",image: "assets/icons/profile1.png"),
                SizedBox(height: MySize.size15,),
                customContainer(text: "House, 3D road, Kohat",image: "assets/icons/profile2.png"),
                SizedBox(height: MySize.size15,),
                customContainer(text: "001802345467",image: "assets/icons/profile3.png"),
                SizedBox(height: MySize.size15,),
                customContainer(text: "06/19/1990",image: "assets/icons/profile4.png"),
                SizedBox(height: MySize.size15,),
                customContainer(text: "Male",image: "assets/icons/profile5.png"),
                SizedBox(height: MySize.size15,),
                customContainer(text: "Male",image: "assets/icons/profile5.png"),
                SizedBox(height: MySize.size20,),

                customTextBold(title: "Social",fontSize: MySize.size16,color: AppColors.black),
                SizedBox(height: MySize.size14,),
                Row(
                  children: [
                    Image.asset("assets/icons/social1.png",height: MySize.size16,width: MySize.size16,),
                    SizedBox(width: MySize.size14,),
                    Image.asset("assets/icons/socail2.png",height: MySize.size16,width: MySize.size16,),
                    SizedBox(width: MySize.size14,),
                     Image.asset("assets/icons/socail3.png",height: MySize.size16,width: MySize.size16,),
                    SizedBox(width: MySize.size14,),
                    Image.asset("assets/icons/socail5.png",height: MySize.size16,width: MySize.size16,),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget customContainer({String ? image,String ? text,}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(image!,height: MySize.size18,width: MySize.size16,),
            SizedBox(width: MySize.size18,),
            customTextRegular(title: text!,fontSize: MySize.size12,color: AppColors.grey90),
            Spacer(),
            Icon(Icons.arrow_forward_ios,color: AppColors.grey999,size: 15,),
          ],
        ),
        Divider(indent: 28,endIndent: 6,),
      ],
    );
  }
}
