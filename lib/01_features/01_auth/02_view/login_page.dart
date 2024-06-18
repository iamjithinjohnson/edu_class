import 'package:auto_route/auto_route.dart';
import 'package:edu_class/04_utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:edu_class/01_features/01_auth/03_view_model/auth_view_model.dart';
import 'package:edu_class/04_utils/app_colors.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:edu_class/03_widgets/ww_button.dart';
import 'package:edu_class/03_widgets/ww_text.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: screenWidth,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  WWText('sample', textSize: TextSize.fw400px13),
                  sized0wx03,
                  Column(
                    children: [
                      WWText('Hi, Ajay', textSize: TextSize.fw600px17),
                      WWText('Tuesday, 23 April 2024',
                          textSize: TextSize.fw400px13)
                    ],
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(color: cBlack.withOpacity(0.5)),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppImages.search),
                        sized0wx05,
                        SvgPicture.asset(AppImages.bellIcon),
                      ],
                    ),
                  )
                ],
              ),
              WWText('Login', textSize: TextSize.fw400px13),
              sized0hx20,
              sized0hx10,
              sized0hx20,
              Observer(builder: (_) {
                return WWButton(
                  loading: vmAuth.loginResponse.loading,
                  width: double.infinity,
                  onPressed: () {},
                  text: "Login",
                );
              }),
              sized0hx20,
            ],
          ),
        ),
      ),
    );
  }
}
