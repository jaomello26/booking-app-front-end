import 'package:apps/bindings/general_bindings.dart';
import 'package:apps/features/authentication/screens/login/login.dart';
import 'package:apps/features/home/home.dart';
import 'package:apps/features/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:apps/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      //darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/login', page: () => const LoginScreen()),
      ],
    );
  }
}
