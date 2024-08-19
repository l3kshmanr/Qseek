import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohammed_s_application1/firebase_options.dart';

import 'package:mohammed_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:mohammed_s_application1/theme/theme_helper.dart';
import 'package:mohammed_s_application1/routes/app_routes.dart';

void main() async {
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      name: 'uploadpage', options: DefaultFirebaseOptions.currentPlatform);
  FirebaseFirestore.instance.settings =
      const Settings(persistenceEnabled: true);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'mohammed_s_application1',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: AppRoutes.routes,
    );
  }
}


// main