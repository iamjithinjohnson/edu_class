import 'package:edu_class/03_widgets/widgets.dart';
import 'package:edu_class/03_widgets/ww_text.dart';
import 'package:edu_class/04_utils/app_images.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularCourses extends StatelessWidget {
  const PopularCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: screenWidth,
          child: WWText('Popular Courses', textSize: TextSize.fw700px14),
        ),
        sized0hx10,
        SizedBox(
          height: 180.h,
          child: ListView.separated(
            separatorBuilder: (context, index) => sized0wx10,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => DecoratedBox(
              decoration: borderCurve(),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 188.w,
                  child: Column(
                    children: [
                      DecoratedBox(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: SizedBox(
                          height: 105.h,
                          width: double.infinity,
                          child: Image.asset(AppImages.homePopularCourses,
                              fit: BoxFit.cover),
                        ),
                      ),
                      sized0hx05,
                      WWText('OET Beginner special class and Perparation Tips',
                          textSize: TextSize.fw700px14),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
