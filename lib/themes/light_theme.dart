import 'package:flutter/material.dart';
//import '/themes/custom_color_scheme.dart';

const defaultLetterSpacing = 0.03;

enum colors {
  primaryColor,
  primaryColorLight,
  primaryColorDark,
  secondaryColor,
  secondaryColorLight,
  secondaryColorDark,
  primaryTextColor,
  secondaryTextColor,

  lighterColor,
  darkerColor,
  scaffoldBackground,
  errorColor,
  errorColorLight,
  errorColorDark
}

class LightTheme {
  /* static Map<colors, Color> colorScheme1 = {
    colors.primaryColor: const Color(0xffbe8454),
    colors.primaryColorLight: const Color(0xffffa960),
    colors.primaryColorDark: const Color(0xff964d00),
    colors.accentColor: const Color(0xff797979),
    colors.accentColorLight: const Color(0xffa8a8a8),
    colors.accentColorDark: const Color(0xff4d4d4d),
    colors.warningColor: const Color(0xffff0000),
    colors.warningColorLight: const Color(0xffffb3b3),
    colors.warningColorDark: const Color(0xffff0000),
  };
 */
  /* static Map<colors, Color> colorScheme2 = {
    colors.primaryColor: const Color(0xffcc7a33),
    colors.primaryColorLight: const Color(0xfff9d7c2),
    colors.primaryColorDark: const Color(0xffb95d20),
    colors.accentColor: const Color(0xff797979),
    colors.accentColorLight: const Color(0xffd7d7d7),
    colors.accentColorDark: const Color(0xff5c5c5c),
    colors.warningColor: const Color(0xffff0000),
    colors.warningColorLight: const Color(0xffffb3b3),
    colors.warningColorDark: const Color(0xffff0000),
  };
 */
  /* static Map<colors, Color> colorScheme3 = {
    colors.darkerColor: Colors.black,
    colors.lighterColor: Colors.white,
    colors.primaryColor: const Color(0xffaf6100),
    colors.primaryColorLight: const Color(0xffe68f39),
    colors.primaryColorDark: const Color(0xff7a3600),
    colors.accentColor: const Color(0xff8b572a),
    colors.accentColorLight: const Color(0xffbe8454),
    colors.accentColorDark: const Color(0xff5a2e00),
    colors.warningColor: const Color(0xffff0000),
    colors.warningColorLight: const Color(0xffffb3b3),
    colors.warningColorDark: const Color(0xffff0000),
  }; */

  static Map<colors, Color> colorScheme4 = {
    colors.darkerColor: Colors.black,
    colors.lighterColor: Colors.white,
    colors.primaryColor: const Color(0xfffc843a),
    colors.primaryColorLight: const Color(0xffffb568),
    colors.primaryColorDark: const Color(0xffc35504),
    colors.secondaryColor: const Color(0xffe6e6e6),
    colors.secondaryColorLight: const Color(0xffffffff),
    colors.secondaryColorDark: const Color(0xffb4b4b4),
    colors.errorColor: const Color(0xffff0000),
    colors.errorColorLight: const Color(0xffffb3b3),
    colors.errorColorDark: const Color(0xffff0000),
  };

  static Map<colors, Color> colorSchemeOrangeBlue = {
    colors.primaryColor: const Color(0xfff6530f),
    colors.primaryColorLight: const Color(0xffff8642),
    colors.primaryColorDark: const Color(0xffbb1800),
    colors.secondaryColor: const Color(0xff1f253a),
    colors.secondaryColorLight: const Color(0xff484d64),
    colors.secondaryColorDark: const Color(0xff000015),
    colors.primaryTextColor: const Color(0xff000000),
    colors.secondaryTextColor: const Color(0xffffffff),
    colors.darkerColor: Colors.black,
    colors.lighterColor: Colors.white,
    colors.scaffoldBackground: const Color(0xffededed),
    colors.errorColor: const Color(0xffb00020),
    colors.errorColorLight: const Color(0xffe7b3bc),
    colors.errorColorDark: const Color(0xff970013),
  };

  final Color _primaryColor = colorSchemeOrangeBlue[colors.primaryColor]!;
  final Color _primaryColorLight = colorSchemeOrangeBlue[colors.primaryColorLight]!;
  final Color _primaryColorDark = colorSchemeOrangeBlue[colors.primaryColorDark]!;

  final Color _secondaryColor = colorSchemeOrangeBlue[colors.secondaryColor]!;
  final Color _secondaryColorLight = colorSchemeOrangeBlue[colors.secondaryColorLight]!;
  final Color _secondaryColorDark = colorSchemeOrangeBlue[colors.secondaryColorDark]!;

  final Color _primaryTextColor = colorSchemeOrangeBlue[colors.primaryTextColor]!;
  final Color _secondaryTextColor = colorSchemeOrangeBlue[colors.secondaryTextColor]!;

  final Color _lighterColor = colorSchemeOrangeBlue[colors.lighterColor]!;

  final Color _scaffoldBackground = colorSchemeOrangeBlue[colors.scaffoldBackground]!;

  final Color _warningColor = colorSchemeOrangeBlue[colors.errorColor]!;
  final Color _warningColorLight = colorSchemeOrangeBlue[colors.errorColorLight]!;
  final Color _warningColorDark = colorSchemeOrangeBlue[colors.errorColorDark]!;

  final Color _textOnElevatedNButton = Colors.white;
//8b8b8b
  ThemeData buildLightTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      primaryColor: _primaryColor,
      primaryColorLight: _primaryColorLight,
      primaryColorDark: _primaryColorDark,
      /* scaffoldBackgroundColor: const Color(0xfffafafa), */
      scaffoldBackgroundColor: _scaffoldBackground,
      hintColor: _secondaryColorLight,
      highlightColor: _primaryColorLight,
      dividerColor: _secondaryColorLight,
      unselectedWidgetColor: _secondaryColor,
      dialogBackgroundColor: _warningColorLight,

      //toggleableActiveColor: _primaryColor,
      /* highlightColor: Colors.white, */

      /* selectedRowColor: Colors.yellow,
      focusColor: Colors.deepPurple,
      splashColor: Colors.cyan,
      indicatorColor: Colors.lightGreen,
      canvasColor: Colors.yellowAccent, */

      visualDensity: VisualDensity.adaptivePlatformDensity,

      appBarTheme: _buildAppBarTheme(base.appBarTheme),

      primaryTextTheme: _buildPrimaryTextTheme(base.textTheme),
      chipTheme: _buildChipTheme(base.chipTheme),
      /* toggleButtonsTheme: _buildToggleButtonsTheme(base.toggleButtonsTheme), */
      inputDecorationTheme: _buildInputDecorationTheme(base.inputDecorationTheme),
      cardTheme: _buildCardTheme(base.cardTheme),
      //buttonTheme: _buildButtonTheme(base.buttonTheme),
      textButtonTheme: _buildTextButtonTheme(),
      outlinedButtonTheme: _buildOutlinedButtonTheme(),
      elevatedButtonTheme: _buildElevatedButtonTheme(),

      iconTheme: _buildIconTheme(base.iconTheme),
      primaryIconTheme: _buildPrimaryIconTheme(base.primaryIconTheme),

      bottomNavigationBarTheme: _buildBottomNavigationBarTheme(base.bottomNavigationBarTheme),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return _primaryColorDark;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return _primaryColorDark;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return _primaryColorDark;
          }
          return null;
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return _primaryColorDark;
          }
          return null;
        }),
      ),
      colorScheme: ColorScheme.light(
              //brightness: Brightness.dark,
              primary: _primaryColor,
              secondary: _secondaryColor,
              secondaryContainer: _secondaryColorLight,
              error: _warningColor,
              background: _lighterColor,
              surface: _lighterColor,
              onBackground: _secondaryColor,
              onError: _lighterColor,
              onPrimary: Colors.white,
              onSecondary: Colors.white,
              onSurface: _secondaryColorDark)
          .copyWith(secondary: _secondaryColor)
          .copyWith(error: _warningColor),
    );
    /* return base.copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      //colorScheme: new LightColorScheme(),
      accentColor: Colors.orangeAccent,
      primaryColor: Colors.orange,
      appBarTheme: _buildAppBarTheme(base.appBarTheme),
      scaffoldBackgroundColor: const Color(/* 0xfffaf1e4 */ /* 0xefefef */ /* 0xdfbc86 */ /* 0xf7ead6 */ 0xfff2f2f0), //Colors.white,
      bottomNavigationBarTheme: _buildBottomNavigationBarTextTheme(base.bottomNavigationBarTheme),
      buttonTheme: _buildButtonTheme(base.buttonTheme),
      cardTheme: _buildCardTheme(base.cardTheme),
      chipTheme: _buildChipTheme(base.chipTheme),
      textSelectionColor: Colors.orange[200],
      errorColor: Colors.red[900],
      // Add the text themes
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildTextTheme(base.accentTextTheme),
      // TODO: Add the icon themes
      // Decorate the inputs
      inputDecorationTheme: _buildInputDecorationTheme(base.inputDecorationTheme),
      toggleButtonsTheme: _buildToggleButtonsTheme(base.toggleButtonsTheme),
      dialogTheme: _buildDialogTheme(base.dialogTheme),
      primaryIconTheme: _buildIconTheme(base.iconTheme),
      iconTheme: _buildIconTheme(base.iconTheme),
      toggleableActiveColor: Colors.orange[600],
    ); */
  }

  TextTheme _buildAccentTextTheme(TextTheme base) {
    return base.copyWith();
  }

  AppBarTheme _buildAppBarTheme(AppBarTheme base) {
    return base.copyWith(
      /* color: _primaryColorLight, */
      /* Color(0xffec5c26 /* 8c0000 */ /* 27383a */ /* ee6f1d */ /* d79655 */ /* 532220 */ /* 8c0000 */ /* ba3d20 */ /* 02766b */), //Colors.transparent, */
      elevation: 0,
      centerTitle: false,
      toolbarTextStyle: TextTheme(
        titleLarge: TextStyle(
          /* color: _primaryColor, */
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ).bodyMedium,
      titleTextStyle: TextTheme(
        titleLarge: TextStyle(
          /* color: _primaryColor, */
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ).titleLarge,
    );
  }

  ButtonThemeData _buildButtonTheme(ButtonThemeData base) {
    return base.copyWith(
      focusColor: _primaryColorLight,
      disabledColor: Colors.transparent,
      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.0, bottom: 0.0),
      /* buttonColor: _primaryColorDark, */
      /* Colors.orange[500], */
      /* splashColor: _primaryColorLight, */
      /* Colors.orange[100], */
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        side: BorderSide(color: Colors.blue, /* color: Color(0xffec5c26 /* 8c0000 */), */ /* Colors.orange, */ width: 0.7),
      ),
    );
  }

  InputDecorationTheme _buildInputDecorationTheme(InputDecorationTheme base) {
    return base.copyWith(
        contentPadding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.0, bottom: 0.0),
        //border: InputBorder.none,
        border: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xffF68F1D))
            /* borderRadius: const BorderRadius.all(Radius.circular(9.0)),
        borderSide: const BorderSide(color: Color(0x00ff0000), width: 0.0), */
            ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: Color(0xffF68F1D), width: 1.5),
        ),
        floatingLabelStyle: TextStyle(color: Colors.black),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16)), borderSide: BorderSide(color: Colors.red)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: Color(0xffF68F1D), width: 1.5),
        ),
        filled: true,
        labelStyle: TextStyle(color: _secondaryColorLight),
        prefixStyle: TextStyle(color: _secondaryColorLight),
        fillColor: Color(0xffFFFFFF)
        /* fillColor: _secondaryColorLight, */
        );
    /* return base.copyWith(
      contentPadding: EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0, bottom: 0.0),
      //border: InputBorder.none,
      border: const OutlineInputBorder(
          /* borderRadius: const BorderRadius.all(Radius.circular(9.0)),
        borderSide: const BorderSide(color: Color(0x00ff0000), width: 0.0), */
          ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(color: Color(0xff26483f /* 27383a */) /* Colors.orange */, width: 1.0),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(color: Color(0xff26483f /* 27383a */) /* Colors.orange */, width: 2.0),
      ),
      filled: true,
      fillColor: Color(0xfff7ead6), /* Colors.white, */
    ); */
  }

  BottomNavigationBarThemeData _buildBottomNavigationBarTheme(BottomNavigationBarThemeData base) {
    return base.copyWith(
      backgroundColor: _scaffoldBackground,
      selectedItemColor: _primaryColor,
      unselectedItemColor: _secondaryColorLight,
      selectedIconTheme: IconThemeData(
        color: _primaryColor,
        size: 32,
      ),
      selectedLabelStyle: TextStyle(color: _primaryColor,fontSize: 12),
      unselectedIconTheme: IconThemeData(
        color: _secondaryColorLight,
        size: 24,
      ),
      unselectedLabelStyle: TextStyle(color: _secondaryColorLight,fontSize: 9),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      
      elevation: 6,
    );
  }

  CardTheme _buildCardTheme(CardTheme base) {
    return base.copyWith(
      /* color: _primaryColorLight, */
      shape: RoundedRectangleBorder(
        /* borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(70.0),
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ), */
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
        side: BorderSide(
          color: _secondaryColorLight.withOpacity(0.5),
          width: 0.5,
        ),
      ),
      elevation: 8,
      /* margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.0, bottom: 0.0), */
    );
  }

  ElevatedButtonThemeData _buildElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(200, 40),
        backgroundColor: Color(0xffFC8B21),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(150)),
        ),
        side: BorderSide(
          width: 0.1,
        ),
        elevation: 2,
      ),
    );
  }

  TextButtonThemeData _buildTextButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        /* primary: Colors.white, */
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }

  OutlinedButtonThemeData _buildOutlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(200, 55),
        foregroundColor: Colors.orange,
        textStyle: TextStyle(color: Colors.orange, fontSize: 20, fontWeight: FontWeight.w700),
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.orange, width: 2),
        /* primary: _accentColor, */
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(150)),
        ),
      ),
    );
  }

  ChipThemeData _buildChipTheme(ChipThemeData base) {
    return base.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      /* backgroundColor: _accentColorLight, */
      /* secondarySelectedColor: _primaryColor, */
      secondaryLabelStyle: TextStyle(/* color: _accentColorDark,  */ fontWeight: FontWeight.bold),
      /* labelStyle: TextStyle(color: _accentColorDark /* , fontSize: 14.0 */ /*  */), */
    );
  }

  TextTheme _buildPrimaryTextTheme(TextTheme base) {
    return base.copyWith(
      bodyLarge: base.bodyLarge!.copyWith(color: _primaryTextColor),
      bodyMedium: base.bodyMedium!.copyWith(color: _primaryTextColor),
      bodySmall: base.bodySmall!.copyWith(color: _primaryTextColor),
      displayLarge: base.displayLarge!.copyWith(color: _primaryTextColor),
      displayMedium: base.displayMedium!.copyWith(color: _primaryTextColor),
      displaySmall: base.displaySmall!.copyWith(color: _primaryTextColor),
      headlineMedium: base.headlineMedium!.copyWith(color: _primaryTextColor),
      headlineSmall: base.headlineSmall!.copyWith(color: _primaryTextColor),
      titleLarge: base.titleLarge!.copyWith(color: _primaryTextColor),
      labelSmall: base.labelSmall!.copyWith(color: _primaryTextColor),
      titleMedium: base.titleMedium!.copyWith(color: _primaryTextColor),
      titleSmall: base.titleSmall!.copyWith(color: _primaryTextColor),
    );
  }

  /* TextTheme _buildSecondaryTextTheme(TextTheme base) {
    return base.copyWith(
      bodyText1: base.bodyText1.copyWith(color: _secondaryTextColor),
      bodyText2: base.bodyText2.copyWith(color: _secondaryTextColor),
      caption: base.caption.copyWith(color: _secondaryTextColor),
      headline1: base.headline1.copyWith(color: _secondaryTextColor),
      headline2: base.headline2.copyWith(color: _secondaryTextColor),
      headline3: base.headline3.copyWith(color: _secondaryTextColor),
      headline4: base.headline4.copyWith(color: _secondaryTextColor),
      headline5: base.headline5.copyWith(color: _secondaryTextColor),
      headline6: base.headline6.copyWith(color: _secondaryTextColor),
      overline: base.overline.copyWith(color: _secondaryTextColor),
      subtitle1: base.subtitle1.copyWith(color: _secondaryTextColor),
      subtitle2: base.subtitle2.copyWith(color: _secondaryTextColor),
    );
  } */

  TextTheme _buildTextTheme(TextTheme base) {
    return base
        .copyWith(
            /* headline5: base.headline5.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: defaultLetterSpacing,
          ),
          headline6: base.headline6.copyWith(
            fontSize: 18,
            letterSpacing: defaultLetterSpacing,
          ),
          caption: base.caption.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            letterSpacing: defaultLetterSpacing,
          ),
          bodyText1: base.bodyText1.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: defaultLetterSpacing,
          ),
          bodyText2: base.bodyText2.copyWith(
            letterSpacing: defaultLetterSpacing,
          ),
          subtitle1: base.subtitle1.copyWith(
            letterSpacing: defaultLetterSpacing,
          ),
          headline4: base.headline4.copyWith(
            letterSpacing: defaultLetterSpacing,
          ),
          button: base.button.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: defaultLetterSpacing,
          ), */

            )
        .apply(
            /* fontFamily: 'IBMPlexSans', */
            //fontFamily: 'Rubik',
            /* displayColor: Colors.black, */
            /* bodyColor: Colors.black, */
            );
  }

  /* ToggleButtonsThemeData _buildToggleButtonsTheme(ToggleButtonsThemeData base) {
    return base.copyWith(
        /* borderColor: Colors.white, */
        );
  } */

  /* DialogTheme _buildDialogTheme(DialogTheme base) {
    return base.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide(/* color: Colors.orange, */ width: 1),
      ),
      elevation: 6,
      /* backgroundColor: const Color(0xf0f2f2f0), */
    );
  } */

  IconThemeData _buildIconTheme(IconThemeData original) {
    return original.copyWith(color: _secondaryColor);
  }

  IconThemeData _buildAccentIconTheme(IconThemeData original) {
    return original.copyWith(/* color: _accentColor */);
  }

  IconThemeData _buildPrimaryIconTheme(IconThemeData original) {
    return original.copyWith(/* color: _primaryColor */);
  }

  /* BottomAppBarTheme _buildBottomAppBarTheme() {
    return BottomAppBarTheme().copyWith(
      color: _primaryColorLight,
      shape: CircularNotchedRectangle(),
    );
  } */
}
