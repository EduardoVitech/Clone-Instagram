import 'package:flutter/material.dart';

import '../utils/dimensions/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webPageLayout;
  final Widget mobilePageLayout;
  const ResponsiveLayout({
    required this.mobilePageLayout,
    required this.webPageLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webPageSize) {
        //web page
        return webPageLayout;
      }
      //mobile page
      return mobilePageLayout;
    });
  }
}
