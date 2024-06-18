import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:edu_class/01_features/01_auth/03_view_model/auth_view_model.dart';
import 'package:edu_class/04_utils/app_colors.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:edu_class/03_widgets/ww_button.dart';
import 'package:edu_class/03_widgets/ww_textfield.dart';
import 'package:edu_class/03_widgets/ww_text.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: screenWidth,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              WWText('Login', textSize: TextSize.fw400px13),
              sized0hx20,
              WWTextField(
                controller: vmAuth.userNameController..text = 'administrator',
                hintText: 'Enter Username',
              ),
              sized0hx10,
              Observer(builder: (context) {
                return WWTextField(
                  controller: vmAuth.passwordController..text = '123',
                  obscureText: vmAuth.passVisibility,
                  maxLines: 1,
                  hintText: 'Enter Password',
                  suffixIcon: vmAuth.passVisibility
                      ? Icons.lock_outline_rounded
                      : Icons.lock_open_rounded,
                  suffixTap: () => vmAuth.loginPassVisible(),
                );
              }),
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
              const Text(
                "If you experience any Authentication isssues kindly contact the manager or higher authorities, They will resolve your issues...",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: textColor,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
