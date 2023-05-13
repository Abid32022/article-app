import 'package:flutter/material.dart';
import 'package:project1/utils/app_colors.dart';

Widget textField({
  bool showtext =true,
  String? hintText,
  FontWeight fontWeight = FontWeight.w400,
  TextEditingController? controller,
  Function ? validator,
  double fontSize = 14,
  Color bordercolor = Colors.black,
  int maxLines  = 1,
  bool ?prefixIcon=false,
  String? prefixImage ,
  bool? suffix = false,
  bool enableborder = false,
  Widget? suffixWidget,
  bool? isObscure = false,
  Color fillcolor  =Colors.white,
  bool filled  = false,
  double borderRadius =8,
  bool nonborder = false,
  Function? ontap,
  bool Ontap = false,
  Color fontColor = AppColors.black,
  bool focusBorder = false})
{

  return TextFormField(
    onTap: Ontap? (){
      ontap!();
    }:null,
    controller: controller,
    validator: (value) {
      return validator!(value);
    },
    maxLines: maxLines,
    obscureText: isObscure!,
    cursorColor: focusBorder? Colors.yellow:null,
    style: focusBorder?  const TextStyle(color: Colors.yellow):null,
    decoration: InputDecoration(

      filled: filled,
      fillColor:fillcolor,

      enabledBorder:enableborder?  OutlineInputBorder(
        borderSide: BorderSide(color: bordercolor),
        borderRadius: BorderRadius.circular(borderRadius),
      ): OutlineInputBorder(
        borderSide: BorderSide(color: bordercolor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      hintText: showtext?  hintText!:null,
      prefixIcon: prefixIcon!? Image.asset(prefixImage!,scale: 4.5,color: Colors.grey.withOpacity(0.75),):null,
      focusedBorder:enableborder?  OutlineInputBorder(
        borderSide: BorderSide(color: bordercolor),
        borderRadius: BorderRadius.circular(borderRadius),
      ): OutlineInputBorder(
        borderSide: BorderSide(color: bordercolor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      suffixIcon: suffix! ? suffixWidget : null,
      hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: fontSize,color: fontColor.withOpacity(0.40),height: 1,),
    ),
  );
}
