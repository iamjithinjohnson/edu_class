import 'package:edu_class/03_widgets/ww_mock_test_card.dart';
import 'package:edu_class/03_widgets/ww_text.dart';
import 'package:edu_class/04_utils/app_images.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:flutter/material.dart';

class WWMockText extends StatelessWidget {
  const WWMockText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WWText('Mock Tests', textSize: TextSize.fw700px14),
          sized0hx05,
          Row(
            children: [
              const MockTestCard(text: 'Reading', svg: AppImagesSvg.book),
              sized0wx10,
              const MockTestCard(
                  text: 'Listening', svg: AppImagesSvg.headphone),
            ],
          ),
          sized0hx10,
          Row(
            children: [
              const MockTestCard(text: 'Writing', svg: AppImagesSvg.pen),
              sized0wx10,
              const MockTestCard(text: 'Speaking', svg: AppImagesSvg.speak),
            ],
          ),
        ],
      ),
    );
  }
}
