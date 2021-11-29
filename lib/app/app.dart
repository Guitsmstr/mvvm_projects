import 'package:flutter/material.dart';
import 'package:mvvm_project/presentation/resources/routes_manager.dart';
import '../presentation/resources/theme_manager.dart';
import '../presentation/resources/routes_manager.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); // privated name constructor?

  int appState = 0;
  static final MyApp instance = MyApp._internal(); //single instance

  factory MyApp() => instance; // factory for the class instance

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
