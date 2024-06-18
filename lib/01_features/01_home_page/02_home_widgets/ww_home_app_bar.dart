import 'package:edu_class/03_widgets/ww_text.dart';
import 'package:edu_class/04_utils/app_colors.dart';
import 'package:edu_class/04_utils/app_images.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.w,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppImages.homeAppbarImage,
            fit: BoxFit.cover,
          ),
          const DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0, 1],
              colors: [Colors.transparent, Color(0xFF1177E1)],
            )),
          ),
          const DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0, 1],
              colors: [Color(0xFF1177E1), Colors.transparent],
            )),
          ),
          const DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.7, 1],
              colors: [Colors.transparent, Color(0xFF1177E1)],
            )),
          ),
          Padding(
            padding: screenWidth,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SafeArea(child: UserAppNameWidget()),
                UserHelpWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserHelpWidget extends StatelessWidget {
  const UserHelpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              AppImages.homePerson,
              width: 100.w,
              height: 100.w,
            ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WWText(
                'Hello, I’m Breff',
                textSize: TextSize.fw600px17,
                color: cWhite,
              ),
              WWText(
                'Ask all your career & exams doubts to me',
                textSize: TextSize.fw400px13,
                color: cWhite,
              )
            ],
          ),
        ),
        Container(
          width: 59.w,
          height: 28.w,
          decoration: BoxDecoration(
              border: Border.all(color: cWhite, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(60)),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFDEEFFF),
                  Color(0xFFADC7EF),
                  Color(0xFF5F9AF3),
                ],
              )),
          child: Center(child: WWText('Ask', textSize: TextSize.fw400px13)),
        )
      ],
    );
  }
}

class UserAppNameWidget extends StatelessWidget {
  const UserAppNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 36.r,
          width: 36.r,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: cBlack.withOpacity(0.2), spreadRadius: 2, blurRadius: 2)
          ], shape: BoxShape.circle),
          child: Image.network(
            height: 36.r,
            width: 36.r,
            'https://media.licdn.com/dms/image/D4D12AQGsWiQQo-hEew/article-cover_image-shrink_720_1280/0/1705940048112?e=2147483647&v=beta&t=Dm3TYa8aaImrrYHEksUYyCuPe0mRjKNlrKcNMnKjlXc',
            fit: BoxFit.cover,
          ),
        ),
        sized0wx10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WWText(
              'Hi, Ajay',
              textSize: TextSize.fw600px17,
              color: cWhite,
            ),
            WWText(
              'Tuesday, 23 April 2024',
              textSize: TextSize.fw400px13,
              color: cWhite,
            )
          ],
        ),
        const Spacer(),
        DecoratedBox(
          decoration: BoxDecoration(
              color: cBlack.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(40.r))),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                SvgPicture.asset(AppImagesSvg.search),
                sized0wx15,
                SvgPicture.asset(AppImagesSvg.bellIcon),
              ],
            ),
          ),
        ),
        sized0wx05,
      ],
    );
  }
}
