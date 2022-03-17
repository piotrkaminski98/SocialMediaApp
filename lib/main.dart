import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/responselive/mobile_screen_layout.dart';
import 'package:flutter_application_1/responselive/responsive_layout_screen.dart';
import 'package:flutter_application_1/responselive/web_screen_layout.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/signup_screen.dart';
import 'package:flutter_application_1/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyAoPiuUL2KvoR_INqGSvGGX2T_j3jSrtzg',
          appId: '1:218280061650:web:987a1d37dbdc9bc6f09b0b',
          messagingSenderId: '218280061650',
          projectId: 'socialmediaapp-14a7a',
          storageBucket: 'socialmediaapp-14a7a.appspot.com'),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: const ResponsiveLayout(
      // mobileScreenLayout: MobileScreenLayout(),
      // webScreenLayout: WebScreenLayout(),
      //  ),
      home: LoginScreen(),
    );
  }
}
