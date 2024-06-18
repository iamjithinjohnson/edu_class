import 'package:auto_route/auto_route.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:edu_class/02_services/storage_service.dart';
import 'package:edu_class/02_services/token_expire.dart';
import 'package:edu_class/04_utils/constant.dart';
import 'package:edu_class/04_utils/routes/app_routes.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    String? token = await SecureStorage().readData(key: "refresh");
    String? accessToken = await SecureStorage().readData(key: "token");
    // for checking access token expire time only
    if (accessToken != null) {
      customPrint(content: 'Access Token');
      jwtTokenChecker(Jwt.parseJwt(accessToken));
    }

    customPrint(content: 'Refresh Token');
    final isAuthenticated = (token != null && token.isNotEmpty)
        ? jwtTokenChecker(Jwt.parseJwt(token))
        : false;
    if (isAuthenticated) {
      resolver.next(true);
    } else {
      resolver.redirect(LoginRoute());
    }
  }
}
