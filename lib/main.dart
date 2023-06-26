import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(defaultOverlay);
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 844),
      builder: (context, child) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: GetMaterialApp(
            title: 'Eden',
            debugShowCheckedModeBanner: false,
            scrollBehavior: const ScrollBehavior().copyWith(physics: const BouncingScrollPhysics()),
            defaultTransition: Transition.fadeIn,
            theme: AppTheme.lightTheme,
            locale: const Locale('en_US'),
            initialRoute: AppRoutes.getOnboardingRoute(),
            getPages: AppRoutes.routes,
          ),
        );
      },
    );
  }
}
