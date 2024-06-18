import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:edu_class/04_utils/appthemes.dart';
import 'package:edu_class/04_utils/injection/injection.dart';
import 'package:edu_class/04_utils/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // DatabaseHelper.instance;
  await ScreenUtil.ensureScreenSize();
  configureLocalDependancies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(325, 640),
      minTextAdapt: true,
      builder: (context, snapshot) {
        return MaterialApp.router(
          routerConfig: appRouter.config(),
          debugShowCheckedModeBanner: false,
          title: 'edu_class',
          // theme: Appthemes.themeData,
        );
      },
    );
  }
}
