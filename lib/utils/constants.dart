import 'package:flutter/cupertino.dart';

const Color kPrimaryColor = Color.fromRGBO(21, 181, 114, 1);
const Color kBackgrounColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;

double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

double fontSize(BuildContext context) =>
    MediaQuery.of(context).size.width * 0.03;
