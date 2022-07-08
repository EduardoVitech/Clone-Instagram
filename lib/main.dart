import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/login_page/login_page.dart';
import 'package:instagram_clone/pages/signup_page/signup_page.dart';
import 'package:instagram_clone/responsive/mobile_page_layout.dart';
import 'package:instagram_clone/responsive/responsive_layout_page.dart';
import 'package:instagram_clone/responsive/web_page_layout.dart';
import 'package:instagram_clone/utils/colors/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAJQN0Is-bbJ1ZMtoRh-T05LsAivWD4-zc',
        appId: '1:124901356060:web:d7fd179c88c0eb4d90a5d9',
        messagingSenderId: '124901356060',
        projectId: 'instagram-clone-eabdb',
        storageBucket: 'instagram-clone-eabdb.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
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
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return const ResponsiveLayout(
                mobilePageLayout: MobilePageLayout(),
                webPageLayout: WebPageLayout(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.hasError}'),
              );
            }
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: primaryColor,
              ),
            );
          }

          return const LoginPage();
        },
      ),
    );
  }
}
