import 'package:flutter/material.dart';
import 'package:instagram_clone/providers/user/user_providder.dart';
import 'package:provider/provider.dart';

import '../utils/global_variables/global_variables.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget webPageLayout;
  final Widget mobilePageLayout;
  const ResponsiveLayout({
    required this.mobilePageLayout,
    required this.webPageLayout,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider _userProvider = Provider.of(context, listen: false);
    await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webPageSize) {
        //web page
        return widget.webPageLayout;
      }
      //mobile page
      return widget.mobilePageLayout;
    });
  }
}
