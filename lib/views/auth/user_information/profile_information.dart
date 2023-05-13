import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:project1/utils/app_colors.dart';
import 'package:project1/utils/my_size.dart';
import 'package:project1/widgets/custom_text_field.dart';
import 'package:project1/widgets/text_widget.dart';

class ProfileInformation extends StatefulWidget {
  const ProfileInformation({Key? key}) : super(key: key);

  @override
  State<ProfileInformation> createState() => _ProfileInformationState();
}

class _ProfileInformationState extends State<ProfileInformation> {
  TextEditingController controller = TextEditingController();

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
  String _selectedValue = 'Male';
  String _selectedValue2 = 'Female';

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 20),
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
              ): Container(
                height: MySize.size120,
                width: Get.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: FileImage(_image!),
                        fit: BoxFit.fill
                    ),
                    color:  AppColors.themecolor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.themecolor.withOpacity(0.30))),
              ),
              SizedBox(height: MySize.size20,),
              customTextBold(title: "Full Name",fontSize: MySize.size14,color: AppColors.black.withOpacity(0.40),),
              SizedBox(height: MySize.size10,),
              textField(hintText: "David Parker",fontSize: MySize.size14,
                  fillcolor: AppColors.themecolor.withOpacity(0.06),
                  filled: true,
                  bordercolor: AppColors.themecolor.withOpacity(0.30)),
              SizedBox(height: MySize.size20,),
              customTextBold(title: "Email",fontSize: MySize.size14,color: AppColors.black.withOpacity(0.40),),
              SizedBox(height: MySize.size10,),
              textField(hintText: "david@gmail.com",fontSize: MySize.size14,
                  fillcolor: AppColors.themecolor.withOpacity(0.06),
                  filled: true,
                  bordercolor: AppColors.themecolor.withOpacity(0.30)),
              SizedBox(height: MySize.size20,),
              IntlPhoneField(
                disableLengthCheck: true,
                dropdownIconPosition: IconPosition.trailing,
                decoration: InputDecoration(
                  fillColor: AppColors.themecolor.withOpacity(0.06),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                  isCollapsed: false,
                  isDense: true,
                  // focusedBorder: InputBorder.none,
                  hintText: 'Mobile Number',
                  hintStyle: TextStyle(fontFamily: 'Montserrat-Regular',fontSize: MySize.size12,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.50)),
                  filled: true,
                  enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:  BorderSide(color: AppColors.themecolor.withOpacity(0.30),width: 1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:  BorderSide(color: AppColors.themecolor.withOpacity(0.30),width: 1),
                  ),
                ),
                initialCountryCode: 'PK',
                flagsButtonPadding: const EdgeInsets.symmetric(horizontal: 10),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              SizedBox(height: MySize.size20,),

              textField(hintText: "06/19/1990",fontSize: MySize.size14,
                  controller: controller,
                  fillcolor: AppColors.themecolor.withOpacity(0.06),
                  filled: true,
                  suffix: true,
                  suffixWidget: GestureDetector(
                      onTap: ()async{
                        var datePicked = await DatePicker.showSimpleDatePicker(
                          //  pickerMode: DateTimePickerMode.date,
                          context,
                          initialDate: DateTime(1994),
                          firstDate: DateTime(1960),
                          lastDate: DateTime(2012),

                          dateFormat: "dd-MMMM-yyyy",
                          locale: DateTimePickerLocale.en_us,
                          looping: true,

                        );
                        controller.text='${datePicked?.year}/${datePicked?.month}/${datePicked?.day}';
                        final snackBar =
                        SnackBar(content: Text("Date Picked $datePicked"));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Icon(Icons.calendar_month,color: AppColors.grey97,)),
                  bordercolor: AppColors.themecolor.withOpacity(0.30)),     SizedBox(height: MySize.size10,),
                    SizedBox(height: MySize.size20,),
              customTextBold(title: "Email",fontSize: MySize.size14,color: AppColors.black.withOpacity(0.40),),
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
                  style: GoogleFonts.getFont('Nunito',textStyle: TextStyle(fontSize: MySize.size16,color: AppColors.black.withOpacity(0.40),letterSpacing: 0.7,fontWeight: FontWeight.w400)),
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
                  items: <String>['Female', 'Male', 'TransGender']
                      .map((country) {
                    return DropdownMenuItem(child:  Text(country),
                      value: country,
                    ) ;
                  }
                  ).toList(),
                ),
              ),
              SizedBox(height: MySize.size20,),
              customTextBold(title: "Password",fontSize: MySize.size14,color: AppColors.black.withOpacity(0.40),),
              SizedBox(height: MySize.size10,),
              textField(hintText: "**************",fontSize: MySize.size14,isObscure: visible,
                  suffix: true,
                  suffixWidget: GestureDetector(
                      onTap: (){
                        setState(() {
                          visible =! visible;
                        });
                      },
                      child: Icon( visible? Icons.visibility_off: Icons.visibility,color: AppColors.grey999,size: 20,)),
                  fillcolor: AppColors.themecolor.withOpacity(0.06),
                  filled: true,
                  bordercolor: AppColors.themecolor.withOpacity(0.30)),
              SizedBox(height: MySize.size40,),
            ],
          )),
    );


  }
}
