import 'package:auto_route/auto_route.dart';
import 'package:edu_class/04_utils/routes/app_routes.gr.dart';
import 'package:edu_class/04_utils/routes/guards.dart';
import 'package:edu_class/04_utils/routes/route_names.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, path: RouteNames.loginPage),
        // AutoRoute(
        //     page: HomeRoute.page,
        //     path: RouteNames.homePage,
        //     guards: [AuthGuard()]),
      ];
}
