import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/home_page/home_page.dart';
import 'package:instagram_clone/responsive/mobile_page_layout.dart';
import 'package:instagram_clone/responsive/responsive_layout_page.dart';
import 'package:instagram_clone/responsive/web_page_layout.dart';
import 'package:instagram_clone/utils/app_routes/app_routes.dart';
import 'package:instagram_clone/utils/colors/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        mobilePageLayout: MobilePageLayout(),
        webPageLayout: WebPageLayout(),
      ),
      /* routes: {
        AppRoutes.HOME_PAGE: (ctx) => const HomePage(),
      }, */
    );
  }
}
