import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Spacing
const kSpacingUnit = 12.0;

// Colors
const kTextColor = Color(0xFF151C2A);
const kTextSecondaryColor = Color(0xFF7E8EAA);
const kPrimaryColor = Color(0xFFFF2765);
const kGreenColor = Color(0xFF0ED6C7);
const kOrangeColor = Color(0xFFFF951A);
const kYellowColor = Color(0xFFFFE482);
const kPurpleColor = Color(0xFF5143DB);
const kBackgroundColor = Color(0xFFF1F5FC);
const kBlueColor = Color(0xFF16ACE3);
const kSplashColor = Color(0xFF64E4FF);
const kShadowColor1 = Color.fromRGBO(149, 190, 207, 0.50);
const kShadowColor2 = Color(0xFFCFECF8);
const kShadowColor3 = Color.fromRGBO(0, 0, 0, 0.10);
const kShadowColor4 = Color.fromRGBO(207, 236, 248, 0.50);
const kShadowColor5 = Color.fromRGBO(238, 226, 255, 0.70);

// My Text Styles
final kHeadingTextStyle = TextStyle(  
  fontSize: ScreenUtil().setSp(24),
  color: kTextColor,
  fontWeight: FontWeight.w900,
);

final kSubheaderTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(20),
  color: kTextColor,
  fontWeight: FontWeight.w900,
);

final kHelloTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(20),
  color: kTextColor,
);


final kTitleTextStyle = TextStyle(  
  fontSize: ScreenUtil().setSp(16),
  color: kTextColor,
);

final kNameTextStyle = TextStyle(  
  fontSize: ScreenUtil().setSp(16),
  color: kPurpleColor,
  fontWeight: FontWeight.w900
);

final kResumenTextStyle = TextStyle(  
  fontSize: ScreenUtil().setSp(16),
  color: Colors.black,
  fontWeight: FontWeight.w600,
);

final kBodyTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(13),
  color: kTextSecondaryColor,
);

final kCaptionTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(12),
  color: kBlueColor,
  fontWeight: FontWeight.w600
);

final kCardActionTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(14),
  color: Colors.white,
  fontWeight: FontWeight.w600
);

final kCardActionResumenTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(14),
  color: Colors.black87,
  fontWeight: FontWeight.w600
);

final kCardActionSubTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(11),
  color: Colors.white,
);

final kPedidosValorTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(28),
  fontWeight: FontWeight.w600,
  color: kSplashColor,
);

final kIngresosValorTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(22),
  fontWeight: FontWeight.w600,
  color: kYellowColor,
);

final kVentasValorTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(28),
  fontWeight: FontWeight.w600,
  color: kTextColor,
);

final kTriangleUpTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(11),
  color: Colors.green,
);