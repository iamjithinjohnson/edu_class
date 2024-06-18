import 'package:auto_route/auto_route.dart';
import 'package:edu_class/01_features/01_home_page/01_view/home_page.dart';
import 'package:edu_class/03_widgets/ww_text.dart';
import 'package:edu_class/04_utils/app_colors.dart';
import 'package:edu_class/04_utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage(name: 'MainScreenRoute')
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const HomePage(),
    SizedBox(
      child: Center(child: WWText('My Courses', textSize: TextSize.fw700px14)),
    ),
    SizedBox(
      child: Center(child: WWText('Mentors', textSize: TextSize.fw700px14)),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex == 0) return true;

        setState(() {
          _currentIndex = 0;
        });

        return false;
      },
      child: Scaffold(
        body: _tabs[_currentIndex],
        // body: PageTransitionAnimation(currentIndex: _currentIndex, tabs: _tabs),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: cBlack,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImagesSvg.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImagesSvg.myCourse),
              label: 'MyCourses',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImagesSvg.profile),
              label: 'Mentors',
            ),
          ],
        ),
      ),
    );
  }
}
