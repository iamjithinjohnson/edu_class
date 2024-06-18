import 'package:edu_class/04_utils/app_images.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:flutter/cupertino.dart';

class WWTakeOnline extends StatelessWidget {
  const WWTakeOnline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: screenWidth, child: Image.asset(AppImages.homeTakeOnline));
  }
}
