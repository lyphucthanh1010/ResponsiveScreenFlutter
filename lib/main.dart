import 'package:flutter/material.dart';
import 'package:fzrx/responsive/mobile_screen_layout.dart';
import 'package:fzrx/responsive/responsive_layout_screen.dart';
import 'package:fzrx/responsive/web_screen_layout.dart';
import 'package:fzrx/utils/colors.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
      debugShowCheckedModeBanner: false,
    );
}
}

