import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'home.dart';

void main() async {
  runApp(
    EasyDynamicThemeWidget(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final String title = 'Flutter Dynamic Theme';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        debugShowCheckedModeBanner: false,
        theme: lightThemeData,
        darkTheme: darkThemeData,
        themeMode: EasyDynamicTheme.of(context).themeMode,
        home: MyHomePage(
          title: title,
        ));
  }
}