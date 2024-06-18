import 'package:edu_class/03_widgets/widgets.dart';
import 'package:edu_class/03_widgets/ww_button.dart';
import 'package:edu_class/03_widgets/ww_text.dart';
import 'package:edu_class/04_utils/app_colors.dart';
import 'package:edu_class/04_utils/app_images.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WWFindMentor extends StatelessWidget {
  const WWFindMentor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: screenWidth,
      child: SizedBox(
        width: double.infinity,
        height: 114.h,
        child: ClipRect(
          clipBehavior: Clip.antiAlias,
          child: DecoratedBox(
            decoration: borderCurve(),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(AppImages.homeMentorImage, fit: BoxFit.cover
                    // width: 200,
                    // height: 200,
                    ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WWText('Find a Mentor', textSize: TextSize.fw600px17),
                      sized0hx05,
                      WWText(
                        'Anywhere, Anytime!',
                        textSize: TextSize.fw400px13,
                        color: cDarkGrey,
                      ),
                      sized0hx10,
                      WWButton(
                        width: 140.w,
                        borderRadius: 60,
                        text: 'Connect Now',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
