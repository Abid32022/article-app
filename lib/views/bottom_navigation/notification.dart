import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/model/notification.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/widgets/text_widget.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<NotificationModel> notificationList=[
    NotificationModel("Check settings and update all", "assets/icons/noti1.png", "New Updates available!"),
    NotificationModel("Visit there and read that easily", "assets/icons/noti.png", "Author published new article"),
    NotificationModel("You have new visitor and comments", "assets/icons/noti2.png", "User commented on your article "),
    NotificationModel("Your comment has been liked", "assets/icons/noti3.png", "User liked your comment "),
    NotificationModel("Manage your storage it is full", "assets/icons/noti3.png", "Your storage os going full!"),

  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: customTextBold(title: "Notification", fontSize: MySize.size18),
        actions: [
          Icon(Icons.more_horiz_outlined,color: Colors.grey,),
          SizedBox(width: MySize.size10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
             // / SizedBox(height: MySize.size10,),
              ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 0),
                  itemCount: notificationList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                return  Container(
                  margin: EdgeInsets.symmetric(vertical: 11),
                  padding: EdgeInsets.symmetric(horizontal: 0,vertical: 14),
                  height: MySize.scaleFactorHeight*87,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: AppColors.themecolor.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(14)
                  ),
                  child: ListTile(
                    leading: Container(
                      height: MySize.scaleFactorHeight*59,
                      width: MySize.scaleFactorWidth*59,
                      decoration: BoxDecoration(
                        color: AppColors.themecolor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(child: Image.asset(notificationList[index].icons,scale: 3.7,),),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: MySize.size6,),
                        customTextBold(title: notificationList[index].titles, fontSize: MySize.size14,fontWeight: FontWeight.w700,color: Colors.black),
                        customTextRegular(title: notificationList[index].subtitles, fontSize: MySize.size12,fontWeight: FontWeight.w500,color: AppColors.grey63),
                      ],
                    ),
                  ),
                );
              })




            ],
          ),
        ),
      ),
    );
  }
}
