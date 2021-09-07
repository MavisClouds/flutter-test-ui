import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double responsiveFont(double designFont) {
  return ScreenUtil().setSp(designFont);
}

Widget textButton(String text,
    {String colorButton = "000000",
    Widget icon,
    double radius,
    double padVert,
    double padHoriz,
    Function onTap}) {
  return TextButton(
    onPressed: onTap,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(fontFamily: "Poppins", color: HexColor("FFFFFF")),
        ),
        icon == null ? Container() : icon
      ],
    ),
    style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: padVert, horizontal: padHoriz),
        backgroundColor: HexColor(colorButton),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius))),
  );
}

Widget appBar(context,
    {String appBarTitle, String leadingImage, List<Widget> actionWidgets}) {
  return AppBar(
    leading: Container(
      height: 22.h,
      width: 22.w,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Image.asset(leadingImage),
      ),
    ),
    title: Text(
      appBarTitle,
      style: TextStyle(
          fontSize: responsiveFont(13),
          fontWeight: FontWeight.w700,
          color: HexColor("545454")),
    ),
    actions: actionWidgets,
  );
}
