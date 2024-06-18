import 'package:auto_route/auto_route.dart';
import 'package:edu_class/04_utils/routes/app_routes.gr.dart';
import 'package:edu_class/04_utils/routes/route_names.dart';
import 'package:edu_class/main_screen.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: RouteNames.homePage),
        AutoRoute(
            page: MainScreenRoute.page, path: RouteNames.mainPage, guards: []),
      ];
}
