import 'package:flutter/material.dart';

class WebPageLayout extends StatefulWidget {
  const WebPageLayout({super.key});

  @override
  State<WebPageLayout> createState() => _WebPageLayoutState();
}

class _WebPageLayoutState extends State<WebPageLayout> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('This is WEB'),
      ),
    );
  }
}
