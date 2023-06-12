import 'package:cloud_on_feira/pages/account/login.dart';
import 'package:cloud_on_feira/pages/home/home.dart';
import 'package:cloud_on_feira/pages/more/more.dart';
import 'package:cloud_on_feira/pages/rooms/rooms.dart';
import 'package:cloud_on_feira/pages/scenes/scenes.dart';
import 'package:cloud_on_feira/pages/security/security.dart';
import 'package:cloud_on_feira/provider/resource_provider.dart';
import 'package:cloud_on_feira/themes/dark_theme.dart';
import 'package:cloud_on_feira/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

import 'provider/alarme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ResourceProvider>(
            create: (_) => ResourceProvider()),
        ChangeNotifierProvider<AlarmeProvider>(
          create: (_) => AlarmeProvider(),
        )
      ],
      child: MaterialApp(
        navigatorKey: MyApp.navigatorKey,
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
          'rooms': (context) => const RoomsPage(),
          'security': (context) => const SecurityPage(),
          'more': (context) => const MorePage()
        },
      ),
    );
  }
}
