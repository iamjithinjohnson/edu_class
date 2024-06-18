import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TextSize {
  fw700px28,
  fw700px22,
  fw600px17,
  fw400px22,
  fw400px17,
  fw400px13,
}

class WWText extends Text {
  WWText(
    super.data, {
    super.key,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    required TextSize textSize,
    TextDecoration? textDecoration,
  }) : super(
            style: customStyle(textSize)
                .copyWith(decoration: textDecoration ?? TextDecoration.none));

  static TextStyle customStyle(TextSize textSize) {
    switch (textSize) {
      case TextSize.fw700px28:
        return TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w700);

      case TextSize.fw700px22:
        return TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700);

      case TextSize.fw600px17:
        return TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600);

      case TextSize.fw400px22:
        return TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w400);

      case TextSize.fw400px17:
        return TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400);

      case TextSize.fw400px13:
        return TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400);
      default:
        return TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w800);
    }
  }
}
