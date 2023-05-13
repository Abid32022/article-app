import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Widget customExtraBold({required String title,Color color = Colors.black,TextAlign textAlign =TextAlign.start, double fontSize = 12, FontWeight fontWeight = FontWeight.normal}){
  return Text(title,style: TextStyle(
    fontFamily: 'Montserrat-ExtraBold',
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,

  ),
    textAlign: textAlign,
  );
}

Widget customTextBold({required String title,Color color = Colors.black,TextAlign textAlign =TextAlign.start, double fontSize = 12, FontWeight fontWeight = FontWeight.normal,TextAlign align = TextAlign.start,}){
  return Text(title,style: TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: 'Montserrat-Bold'
    // height: 1.5,
    // wordSpacing: 5
  ),
    textAlign: align,
  );
}

Widget customTextRegular({required String title,Color color = Colors.black,TextAlign textAlign =TextAlign.start, double fontSize = 12, FontWeight fontWeight = FontWeight.normal,TextAlign align = TextAlign.start}){
  return Text(title,style: TextStyle(
    fontSize: fontSize,
    fontFamily: 'Montserrat-Regular',
    fontWeight: fontWeight,
    color: color,
    height: 1.5,

  ),
  //  maxLines: 2,
  //  overflow: TextOverflow.ellipsis,
    textAlign: align,
  );


}



Widget TextWidgetMerri({required String title,Color color = Colors.black, double fontSize = 12, FontWeight fontWeight = FontWeight.normal,TextAlign align = TextAlign.start}){
  return Text(title,style: GoogleFonts.merriweather(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.5,
      wordSpacing: 5
  ),
    textAlign: align,
  );
}