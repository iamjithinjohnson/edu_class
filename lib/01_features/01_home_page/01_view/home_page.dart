import 'package:auto_route/auto_route.dart';
import 'package:edu_class/01_features/01_home_page/02_home_widgets/ww_find_mentor.dart';
import 'package:edu_class/01_features/01_home_page/02_home_widgets/ww_home_app_bar.dart';
import 'package:edu_class/01_features/01_home_page/02_home_widgets/ww_mock_test.dart';
import 'package:edu_class/01_features/01_home_page/02_home_widgets/ww_popular_courses.dart';
import 'package:edu_class/01_features/01_home_page/02_home_widgets/ww_recently.dart';
import 'package:edu_class/01_features/01_home_page/02_home_widgets/ww_explore_courses.dart';
import 'package:edu_class/01_features/01_home_page/02_home_widgets/ww_take_online.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:edu_class/04_utils/app_colors.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: cBackground,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const HomeAppBar(),
            sized0hx05,
            const RecentlyWidget(),
            sized0hx10,
            const WWExploreCourses(),
            sized0hx10,
            const WWFindMentor(),
            sized0hx10,
            const WWMockText(),
            sized0hx10,
            const WWTakeOnline(),
            sized0hx10,
            const PopularCourses(),
            sized0hx50,
          ],
        ),
      ),
    );
  }
}
