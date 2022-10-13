import 'package:flutter/material.dart';

const Color kPrimaryColor = Color.fromRGBO(21, 181, 114, 1);
const Color kBackgroundColor = Color.fromRGBO(252, 228, 236, 0.1);
const Color SkilsColor = Color.fromRGBO(0, 0, 0, 0.8);
const Color EducationColor = Color.fromRGBO(0, 151, 167, 1);
const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
const Color kCaptionColor = Color.fromRGBO(105, 105, 105, 1);
const Color FooterColor = Color.fromRGBO(0, 0, 0, 1);
const Color TESTColor = Color.fromRGBO(0, 0, 205, 1);
const Color HeadColor = Color.fromRGBO(221, 182, 186, 1.0);
const Color SponserColor = Color.fromRGBO(21, 101, 192, 0.8);
// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
