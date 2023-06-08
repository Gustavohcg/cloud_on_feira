import 'package:cloud_on_feira/pages/account/login.dart';
import 'package:cloud_on_feira/pages/home/home.dart';
import 'package:cloud_on_feira/pages/rooms/rooms.dart';
import 'package:cloud_on_feira/pages/scenes/scenes.dart';
import 'package:cloud_on_feira/themes/dark_theme.dart';
import 'package:cloud_on_feira/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<FormBuilderState> loginnFBKey = GlobalKey<FormBuilderState>();

  late ThemeData lightTheme, darkTheme;

  ThemeMode? _themeMode;

  @override
  Widget build(BuildContext context) {
    lightTheme = LightTheme().buildLightTheme();
    darkTheme = DarkTheme().buildDarkTheme();
    return MaterialApp(
      themeMode: _themeMode ?? ThemeMode.system,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      // home: LoginPage(fbKey: loginnFBKey),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(fbKey: loginnFBKey),
        '/dashboard': (context) => const DashboardPage(),
        'scenes': (context) => const ScenesPage(),
        'rooms': (context) => const RoomsPage()
      },
      // builder: (context, child) {
      //   return Scaffold(
      //     body: child,
      //     bottomNavigationBar: const SpiritBottomNavigationBar(),
      //   );
      // },
    );
  }
}
