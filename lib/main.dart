import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iot_project/pages/login_page.dart';
import 'package:iot_project/pages/register_page.dart';
import 'package:iot_project/values/app_constants.dart';
import 'package:iot_project/values/app_routes.dart';
import 'package:iot_project/values/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ),
  );
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then(
    (_) => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login and Register UI',
      theme: AppTheme.themeData,
      initialRoute: AppRoutes.loginScreen,
      navigatorKey: AppConstants.navigationKey,
      routes: {
        AppRoutes.loginScreen: (context) => const LoginPage(),
        AppRoutes.registerScreen: (context) => const RegisterPage(),
      },
    );
  }
}
