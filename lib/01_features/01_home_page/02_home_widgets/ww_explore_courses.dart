import 'package:edu_class/03_widgets/ww_button.dart';
import 'package:edu_class/04_utils/app_colors.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:flutter/material.dart';

class WWExploreCourses extends StatelessWidget {
  const WWExploreCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: screenWidth,
      child: const WWButton(
        text: 'Explore Courses',
        width: double.infinity,
        leading: Icon(Icons.arrow_forward_ios_rounded, color: cWhite),
      ),
    );
  }
}
