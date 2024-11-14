import 'package:apps/data/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final AuthenticationService _authService = AuthenticationService();

  @override
  void initState() {
    super.initState();
    _determineStartScreen();
  }

  void _determineStartScreen() async {
    FlutterNativeSplash.remove();

    bool isLoggedIn = await _authService.isLoggedIn();

    if (isLoggedIn) {
      Get.offAllNamed('/home');
    } else {
      Get.offAllNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
