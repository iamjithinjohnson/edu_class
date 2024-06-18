import 'package:edu_class/03_widgets/ww_text.dart';
import 'package:edu_class/04_utils/app_colors.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MockTestCard extends StatelessWidget {
  final String text;
  final String svg;
  const MockTestCard({
    super.key,
    required this.text,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: cWhite,
            borderRadius: BorderRadius.all(Radius.circular(11.r))),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  width: 32.h,
                  height: 36.h,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: cStrokeBorder,
                        borderRadius: BorderRadius.all(Radius.circular(11.r))),
                    child: Center(
                      child: SvgPicture.asset(
                        svg,
                        width: 16.w,
                        height: 16.w,
                      ),
                    ),
                  ),
                ),
              ),
              sized0wx05,
              WWText(text, textSize: TextSize.fw400px13),
              sized0wx05,
            ],
          ),
        ),
      ),
    );
  }
}
