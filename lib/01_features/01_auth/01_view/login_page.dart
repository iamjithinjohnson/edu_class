import 'package:auto_route/auto_route.dart';
import 'package:edu_class/01_features/01_auth/05_widgets/ww_home_app_bar.dart';
import 'package:edu_class/01_features/01_auth/05_widgets/ww_recently.dart';
import 'package:flutter/material.dart';
import 'package:edu_class/04_utils/app_colors.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:flutter/services.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: cBackground,
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const HomeAppBar(),

          sized0hx05,

          const RecentlyWidget(),

          // sized0hx20,
          // sized0hx10,
          // sized0hx20,
          // Observer(builder: (_) {
          //   return WWButton(
          //     // loading: vmAuth.loginResponse.loading,
          //     width: double.infinity,
          //     onPressed: () {},
          //     text: "Explore Courses",
          //   );
          // }),
          // sized0hx20,
        ],
      ),
    );
  }
}
