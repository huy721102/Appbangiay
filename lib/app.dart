import 'package:appbangiay/features/authentication/screens/onboarding/onboarding.dart';
import 'package:appbangiay/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///use this goi
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme:HAppTheme.lightTheme,
      darkTheme:HAppTheme.darkTheme,
      home: const OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}