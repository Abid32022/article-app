import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/text_widget.dart';
import 'package:flutter_quill/flutter_quill.dart' as q;

import '../../utils/app_colors.dart';
class CreateArticle extends StatefulWidget {
  const CreateArticle({Key? key}) : super(key: key);

  @override
  State<CreateArticle> createState() => _CreateArticleState();
}

class _CreateArticleState extends State<CreateArticle> {
  File ?_image;

  Future _pickImage(ImageSource source)async{
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null)return;
      File ? img = File(image.path);
      setState(() {
        _image = img;
        // Navigator.of(context).pop();
      });
    } on PlatformException catch (e){
      print(e);
      // Navigator.of(context).pop();
    }
  }
  bool visible = false;
  String _selectedValue = 'Select Topic';
  String _selectedValue2 = 'Select Topic';
  q.QuillController _controller = q.QuillController.basic();

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
        title: customTextBold(title: "Create Article", fontSize: MySize.size18),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.bagroundColor,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySize.size30,),


              _image == null?  GestureDetector(
                onTap: (){
                  _pickImage(ImageSource.gallery);
                },
                child: Container(
                  height: MySize.size120,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color:  AppColors.themecolor.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.themecolor.withOpacity(0.30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/camera.png",height: MySize.size12,width: MySize.size16,),
                      SizedBox(height: MySize.size2,),
                      customTextRegular(title: "Add Profile",fontSize: MySize.size10,color: AppColors.grey999),
                    ],
                  ),
                ),
              ):
              Container(
                height: MySize.size120,
                width: Get.width,
                decoration: BoxDecoration(
                    color:  AppColors.themecolor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: FileImage(_image!),
                      fit: BoxFit.fill
                    ),
                    border: Border.all(color: AppColors.themecolor.withOpacity(0.30))),

              ),


              SizedBox(height: MySize.size20,),
              customTextBold(title: "Tittle",fontSize: MySize.size14,color: AppColors.black.withOpacity(0.40),),
              SizedBox(height: MySize.size10,),
              textField(hintText: "Type Tittle",fontSize: MySize.size14,
                  fillcolor: AppColors.themecolor.withOpacity(0.06),
                  filled: true,
                  bordercolor: AppColors.themecolor.withOpacity(0.30)),
              SizedBox(height: MySize.size20,),
              customTextBold(title: "Article",fontSize: MySize.size14,color: AppColors.black.withOpacity(0.40),),

              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                //  margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: AppColors.bagroundColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 12,
                          spreadRadius: 0,
                          offset: Offset(0,4)
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      height: MySize.size260,
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: AppColors.themecolor.withOpacity(0.06),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.greyea)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           q.QuillEditor.basic(
                              keyboardAppearance:Brightness.light,
                              controller: _controller,
                            readOnly: false,

                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: AppColors.bagroundColor,
                      height: MySize.size60,
                      child:q.QuillToolbar.basic(
                          controller: _controller,
                          // showDirection: true,
                          // showInlineCode: true,showAlignmentButtons: true
                        showCodeBlock: false,
                        // showHorizontalRule: true,
                        showListCheck: false,
                        multiRowsDisplay: false,
                        // showListOrdered: true,
                        // showListBullet: true,
                        showQuote: true,
                        showStrikeThrough: false,
                        // showItalic: true,
                        // showUnderLine: true,
                        // showBold: true,
                        showColorButton: true,
                        showBackgroundColorButton: true,
                        showLink: true,
                        showClearFormat: true,

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MySize.size20,),
              customTextBold(title: "Topic",fontSize: MySize.size14,color: AppColors.black.withOpacity(0.40),),
              SizedBox(height: MySize.size10,),
              Container(
                padding: const EdgeInsets.only(top: 13,left: 17,right: 23),
                height: MySize.size54,
                width: Get.width,
                decoration: BoxDecoration(
                    color: AppColors.themecolor.withOpacity(0.06),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.themecolor.withOpacity(0.30))
                ),
                child: DropdownButton(
                  style: GoogleFonts.getFont('Nunito',textStyle: TextStyle(fontSize: MySize.size16,color: AppColors.black,letterSpacing: 0.7,fontWeight: FontWeight.w400)),
                  value: _selectedValue2,
                  isExpanded: true,
                  isDense: true,
                  icon: const Icon(Icons.keyboard_arrow_down,color: AppColors.grey999,),
                  underline: Container(),
                  onChanged: (newValue){
                    setState(() {
                      _selectedValue2='$newValue';
                    });
                  },
                  items: <String>['Select Topic', 'Male', 'TransGender']
                      .map((country) {
                    return DropdownMenuItem(child:  Text(country),
                      value: country,
                    ) ;
                  }
                  ).toList(),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
