import 'package:eCommerce_app/core/resources/chace_helper.dart';
import 'package:eCommerce_app/core/routes_manager/routes.dart';
import 'package:eCommerce_app/di.dart';
import 'package:eCommerce_app/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes_manager/route_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await SharedPrefs.init();

  String? token = SharedPrefs.get<String>("token");

  DummyData d1 = DummyData("1", "sdfdfsf");
  DummyData d2 = DummyData("1", "Mohamed");

  print(d1.hashCode);
  print(d2.hashCode);
  runApp(MainApp(
    loggedIn: token == null ? false : true,
  ));
}

class MainApp extends StatelessWidget {
  final bool loggedIn;

  const MainApp({required this.loggedIn, super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: child,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: loggedIn ? Routes.mainRoute : Routes.signInRoute,
      ),
    );
  }
}
