import 'package:edu_class/03_widgets/ww_text.dart';
import 'package:edu_class/04_utils/app_colors.dart';
import 'package:edu_class/04_utils/app_images.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentlyWidget extends StatelessWidget {
  const RecentlyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: screenWidth,
          child: WWText('Recently played', textSize: TextSize.fw700px14),
        ),
        sized0hx05,
        Padding(
          padding: screenWidth,
          child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: cWhite,
                border: Border.all(color: cStrokeBorder)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  ClipRect(
                    clipBehavior: Clip.antiAlias,
                    child: DecoratedBox(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: SizedBox(
                          height: 56.w,
                          width: 76.w,
                          child: Image.asset(AppImages.homePlayImage,
                              fit: BoxFit.cover),
                        )),
                  ),
                  sized0wx10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WWText(
                            'OET Beginner special class and Preparation Tips',
                            textSize: TextSize.fw500px12),
                        // sized0hx05,
                        WWText(
                          '20:45 / 35 :12 ',
                          textSize: TextSize.fw400px13,
                          color: cDarkGrey,
                        )
                      ],
                    ),
                  ),
                  // 2B83D5

                  sized0wx05,

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 36.w,
                        width: 36.w,
                        child: const CircularProgressIndicator(
                          strokeCap: StrokeCap.round,
                          backgroundColor: Color(0xff2B83D5),
                          valueColor: AlwaysStoppedAnimation<Color>(cWhite),
                          // value: 30,
                        ),
                      ),
                      Center(child: WWText('30%', textSize: TextSize.fw400px10))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
