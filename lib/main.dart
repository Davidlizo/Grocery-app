import 'package:ego_supermart/features/shop/screens/login/login.dart';

import 'package:ego_supermart/features/shop/screens/store/widgets/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/'
      routes: {
        "/" :(context) => const SplashScreen(),
        '/loginscreen': (context) => const LoginScreen(),
      },
    
    );
  }
}
