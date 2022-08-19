import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/utils/responsive_utils.dart';
import 'firebase_options.dart';
import 'view/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width >= screenSize.height && screenSize.height >= 720) {
      return MaterialApp(
        builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidthLandscape: 1000,
          minWidthLandscape: 360,
          landscapePlatforms: [ResponsiveTargetPlatform.web],
          useShortestSide: true,
          breakpointsLandscape: [
            ResponsiveBreakpoint.resize(360, name: MOBILE),
            ResponsiveBreakpoint.resize(400, name: MOBILE),
          ],
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
          background: Container(color: const Color(0xfffefefe)),
        ),
        initialRoute: Homepage.screenId,
        title: 'Parkour Jakarta 15th Anniversary',
        home: Homepage(),
      );
    } else {
      return MaterialApp(
        builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidthLandscape: 480,
          minWidthLandscape: 240,
          landscapePlatforms: [ResponsiveTargetPlatform.web],
          useShortestSide: true,
          breakpointsLandscape: [
            ResponsiveBreakpoint.resize(240, name: MOBILE),
            ResponsiveBreakpoint.resize(400, name: MOBILE),
          ],
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
          background: Container(color: const Color(0xfffefefe)),
        ),
        initialRoute: Homepage.screenId,
        title: 'Parkour Jakarta 15th Anniversary',
        home: Homepage(),
      );
    }
    ;
  }
}
