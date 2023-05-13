import 'package:flutter/material.dart';
import 'package:project1/model/discover_model.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/widgets/text_widget.dart';
class DiscoverPeople extends StatefulWidget {
  const DiscoverPeople({Key? key}) : super(key: key);

  @override
  State<DiscoverPeople> createState() => _DiscoverPeopleState();
}

class _DiscoverPeopleState extends State<DiscoverPeople> {
  List<DiscoverModel>discoverList=[
    DiscoverModel("assets/images/discover1.png", "John Mask", "@john_gee"),
    DiscoverModel("assets/images/d2.png", "Elon Jordan", "@john_gee"),
    DiscoverModel("assets/images/d3.png", "Jolia Narmal", "@john_gee"),
    DiscoverModel("assets/images/d4.png", "Pavan Jeep", "@john_gee"),
    DiscoverModel("assets/images/d5.png", "Shaista Rozi", "@john_gee"),
    DiscoverModel("assets/images/d6.png", "Jason Kurnal", "@john_gee"),
  ];
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bagroundColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextBold(title:  "Discover People",fontSize: MySize.size18,color: AppColors.black),
              SizedBox(height: MySize.size18,),

           ListView.builder(
              itemCount: discoverList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
            return DiscoverTile(b: discoverList[index],);
          })


            ],
          ),
        ),
      ),
    );
  }
}
class DiscoverTile extends StatefulWidget {
   DiscoverTile({Key? key,required this.b}) : super(key: key);
   final DiscoverModel b;
  @override
  State<DiscoverTile> createState() => _DiscoverTileState();
}

class _DiscoverTileState extends State<DiscoverTile> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
          leading: Container(
            height: MySize.scaleFactorHeight*45,
            width: MySize.scaleFactorHeight*45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(widget.b.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextBold(title: widget.b.title,fontSize: MySize.size14,color: AppColors.black),
              customTextBold(title: widget.b.subtitle,fontSize: MySize.size12,color: AppColors.grey97),
            ],
          ),
          trailing:GestureDetector(
              onTap: (){
                setState(() {
                  isChecked=!isChecked;
                });
              },
              child: customTextBold(title: isChecked ?"Follow": "Following",fontSize: MySize.size12,color:isChecked? AppColors.themecolor:AppColors.grey999)),
        ),
        Divider(color: AppColors.greyd8.withOpacity(0.21),)
      ],
    );

  }
}
