import 'package:flutter/material.dart';
import '/themes/rally_colors.dart';

class DarkTheme {
  ThemeData buildDarkTheme() {
    //return _buildRallyTheme();
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      primaryColor: const Color(0xffcc7a33),
      primaryColorLight: Color(0xfff0d7c2),
      primaryColorDark: Color(0xffb95d20),
      scaffoldBackgroundColor: const Color(0xff2c2c2c),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xff797979)),
    );
    /* return base.copyWith(
      accentColor: Colors.orangeAccent,
      primaryColor: Colors.orange,
      scaffoldBackgroundColor: Color(0xfff1f3f7),

      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: Colors.orange[500],
        textTheme: ButtonTextTheme.normal,
        shape: StadiumBorder(),
      ),

      /* cardTheme: CardTheme(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(70.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
        ),
        elevation: 20.0,
        margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.0, bottom: 0.0),
      ), */

      textSelectionColor: Colors.orange[200],

      errorColor: Colors.red[900],

      // Add the text themes (103)
      textTheme: _buildDarkTextTheme(base.textTheme),
      primaryTextTheme: _buildDarkTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildDarkTextTheme(base.accentTextTheme),
      // TODO: Add the icon themes (103)

      // Decorate the inputs (103)
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0, bottom: 0.0),
        //border: InputBorder.none,
        border: const OutlineInputBorder(
            /* borderRadius: const BorderRadius.all(Radius.circular(9.0)),
        borderSide: const BorderSide(color: Color(0x00ff0000), width: 0.0), */
            ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          borderSide: const BorderSide(color: Colors.orange, width: 0.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          borderSide: const BorderSide(color: Colors.orange, width: 1.0),
        ),
        filled: true,
        fillColor: const Color(0xffffffff),
      ),
    ); */
  }

  /* TextTheme _buildDarkTextTheme(TextTheme base) {
    return base
        .copyWith(
          headline: base.headline.copyWith(
            fontWeight: FontWeight.w100,
          ),
          title: base.title.copyWith(fontSize: 18.0),
          caption: base.caption.copyWith(
            fontWeight: FontWeight.w100,
            fontSize: 14.0,
          ),
        )
        .apply(
          //fontFamily: 'IBMPlexSans',
          fontFamily: 'Rubik',
          displayColor: Colors.white,
          bodyColor: Colors.white,
        );
  } */

  ThemeData _buildRallyTheme() {
    final base = ThemeData.dark();
    return ThemeData(
      scaffoldBackgroundColor: RallyColors.primaryBackground,
      primaryColor: RallyColors.primaryBackground,
      focusColor: RallyColors.focusColor,
      textTheme: _buildRallyTextTheme(base.textTheme),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: RallyColors.gray,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: RallyColors.inputBackground,
        focusedBorder: InputBorder.none,
      ),
    );
  }

  TextTheme _buildRallyTextTheme(TextTheme base) {
    return base
        .copyWith(
          bodyLarge: base.bodyLarge!.copyWith(
            fontFamily: 'Roboto Condensed',
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: base.bodyMedium!.copyWith(
            fontFamily: 'Eczar',
            fontSize: 40,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.4,
          ),
          labelLarge: base.labelLarge!.copyWith(
            fontFamily: 'Roboto Condensed',
            fontWeight: FontWeight.w700,
            letterSpacing: 2.8,
          ),
          displayLarge: base.bodyMedium!.copyWith(
            fontFamily: 'Eczar',
            fontSize: 40,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.4,
          ),
        )
        .apply(
          displayColor: Colors.white,
          bodyColor: Colors.white,
        );
  }
}
