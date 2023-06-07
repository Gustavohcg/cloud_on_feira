import 'package:flutter/material.dart';
//import '/themes/light_theme.dart';

enum SpiritColors {
  screenBackgroundColor,
  commonText,
  componentBorderColor,

  //#region Card
  cardBackgroundColor,
  cardShadowTopColor,
  cardBorderTopColor,
  cardShadowBottomColor,
  cardBorderBottomColor,
  //#endregion

  //#region Buttons
  okButtonGradientInitBackgroundColor,
  okButtonGradientFinalBackgroundColor,
  okButtonTextColor,

  cancelButtonGradientInitBackgroundColor,
  cancelButtonGradientFinalBackgroundColor,
  cancelButtonTextColor,
  //#endregion

  //#region Container acima do grid na tela principal
  containerDescricaoGridBackgroundColor,
  containerDescricaoTextColor,
  //#endregion

  //#region Grid de categorias de sensores
  gridGradientInitBackgroundColor,
  gridGradientFinalBackgroundColor,

  itemGridGradientInitBackgroundColorEnabled,
  itemGridGradientFinalBackgroundColorEnabled,
  itemGridTextColorEnabled,

  itemGridGradientInitBackgroundColorDisabled,
  itemGridGradientFinalBackgroundColorDisabled,
  itemGridTextColorDisabled,
  //#endregion

  //#region AppBar
  appBarInitGradientBackgroundColor,
  appBarFinalGradientBackgroundColor,
  appBarTextColor,
  appBarMenuColor,
  //#endregion

  ///#region Outros
  separator,

  ///#endregion
}

///#region comment
/* extension LightScheme on SpiritColors {
  Color get value {
    switch (this) {
      case SpiritColors.screenBackgroundColor:
        return const Color(0xff343a46);
      //#region Buttons
      case SpiritColors.okButtonGradientInitBackgroundColor:
        return Colors.green[800];
      case SpiritColors.okButtonGradientFinalBackgroundColor:
        return Colors.green[800];
      case SpiritColors.okButtonTextColor:
        return Colors.white;
      case SpiritColors.cancelButtonGradientInitBackgroundColor:
        return Colors.grey[100];
      case SpiritColors.cancelButtonGradientFinalBackgroundColor:
        return Colors.grey[50];
      case SpiritColors.cancelButtonTextColor:
        return Colors.red;
      //#endregiom
      case SpiritColors.containerDescricoGridBackgroundColor:
        return const Color(0xff404857);
      case SpiritColors.containerDescricaoTextColor:
        return const Color(0xffecebeb);
      case SpiritColors.gridGradientInitBackgroundColor:
        return const Color(0xff343a46);
      case SpiritColors.gridGradientFinalBackgroundColor:
        return const Color(0xff343a46);
      case SpiritColors.itemGridGradientInitBackgroundColorEnabled:
        return const Color(0xff5d6579);
      case SpiritColors.itemGridGradientFinalBackgroundColorEnabled:
        return const Color(0xff4c5567);
      case SpiritColors.itemGridTextColorEnabled:
        return const Color(0xffed7f03);
      case SpiritColors.itemGridGradientInitBackgroundColorDisabled:
        return const Color(0xff53596b);
      case SpiritColors.itemGridGradientFinalBackgroundColorDisabled:
        return const Color(0xff3c4251);
      case SpiritColors.itemGridTextColorDisabled:
        return const Color(0xff404857);
      case SpiritColors.appBarInitGradientBackgroundColor:
        return const Color(0xffed7f03);
      case SpiritColors.appBarFinalGradientBackgroundColor:
        return const Color(0xfff64701);
      case SpiritColors.appBarTextColor:
        return const Color(0xffffffff);
      case SpiritColors.appBarMenuColor:
        return const Color(0xffffffff);
    }
  }
}

extension DarkScheme on SpiritColors {
  Color get value {
    switch (this) {
      case SpiritColors.okButtonGradientInitBackgroundColor:
        return Colors.green[800];
        break;
      case SpiritColors.screenBackgroundColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.okButtonGradientFinalBackgroundColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.okButtonTextColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.cancelButtonGradientInitBackgroundColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.cancelButtonGradientFinalBackgroundColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.cancelButtonTextColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.containerDescricoGridBackgroundColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.containerDescricaoTextColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.gridGradientInitBackgroundColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.gridGradientFinalBackgroundColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.itemGridGradientInitBackgroundColorEnabled:
        // TODO: Handle this case.
        break;
      case SpiritColors.itemGridGradientFinalBackgroundColorEnabled:
        // TODO: Handle this case.
        break;
      case SpiritColors.itemGridTextColorEnabled:
        // TODO: Handle this case.
        break;
      case SpiritColors.itemGridGradientInitBackgroundColorDisabled:
        // TODO: Handle this case.
        break;
      case SpiritColors.itemGridGradientFinalBackgroundColorDisabled:
        // TODO: Handle this case.
        break;
      case SpiritColors.itemGridTextColorDisabled:
        // TODO: Handle this case.
        break;
      case SpiritColors.appBarInitGradientBackgroundColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.appBarFinalGradientBackgroundColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.appBarTextColor:
        // TODO: Handle this case.
        break;
      case SpiritColors.appBarMenuColor:
        // TODO: Handle this case.
        break;
    }
  }
} */
///#endregion
extension CustomColorScheme on ColorScheme {
  Map<SpiritColors, Color> get light => {
        SpiritColors.appBarMenuColor: const Color(0xff343a46),
        /* SpiritColors.screenBackgroundColor: const Color(0xfff1f3f7), */
        SpiritColors.screenBackgroundColor: Colors.white,
        SpiritColors.commonText: const Color(0xff000000),
        SpiritColors.componentBorderColor: Colors.orange,

        //#region Card
        SpiritColors.cardBackgroundColor: const Color(0xffffffff),
        SpiritColors.cardShadowTopColor: const Color(0xffffffff),
        SpiritColors.cardBorderTopColor: const Color(0xffffffff),
        SpiritColors.cardShadowBottomColor: const Color(0x29000000),
        SpiritColors.cardBorderBottomColor: const Color(0x7f707070),
        //#endregion

        //#region Buttons
        SpiritColors.okButtonGradientInitBackgroundColor: Colors.orange[600]!,
        SpiritColors.okButtonGradientFinalBackgroundColor: Colors.orange[800]!,
        SpiritColors.okButtonTextColor: Colors.white,
        SpiritColors.cancelButtonGradientInitBackgroundColor: Colors.orange[50]!,
        SpiritColors.cancelButtonGradientFinalBackgroundColor: Colors.orange[100]!,
        SpiritColors.cancelButtonTextColor: Colors.red,
        //#endregiom

        SpiritColors.containerDescricaoGridBackgroundColor: const Color(0xff404857),
        SpiritColors.containerDescricaoTextColor: const Color(0xffecebeb),
        SpiritColors.gridGradientInitBackgroundColor: const Color(0xff343a46),
        SpiritColors.gridGradientFinalBackgroundColor: const Color(0xff343a46),
        SpiritColors.itemGridGradientInitBackgroundColorEnabled: const Color(0xff5d6579),
        SpiritColors.itemGridGradientFinalBackgroundColorEnabled: const Color(0xff4c5567),
        SpiritColors.itemGridTextColorEnabled: const Color(0xffed7f03),
        SpiritColors.itemGridGradientInitBackgroundColorDisabled: const Color(0xff53596b),
        SpiritColors.itemGridGradientFinalBackgroundColorDisabled: const Color(0xff3c4251),
        SpiritColors.itemGridTextColorDisabled: const Color(0xff404857),
        SpiritColors.appBarInitGradientBackgroundColor: const Color(0xfff1f3f7), // Color(0xffed7f03),
        SpiritColors.appBarFinalGradientBackgroundColor: const Color(0xfff1f3f7), // const Color(0xfff64701),
        SpiritColors.appBarTextColor: const Color(0xffffffff),
        SpiritColors.appBarMenuColor: const Color(0xffffffff),
        /* SpiritColors.okButtonGradientInitBackgroundColor:
            const Color(0xff343a46) */

        SpiritColors.appBarMenuColor: const Color(0xffeaeaea),

        SpiritColors.separator: const Color(0xffeaeaea),
      };

  Map<SpiritColors, Color> get dark => {
        SpiritColors.appBarMenuColor: const Color(0xff343a46),
        /* SpiritColors.screenBackgroundColor: const Color(0xff343a46), */
        SpiritColors.screenBackgroundColor: Colors.black,
        SpiritColors.commonText: const Color(0xff000000),
        SpiritColors.componentBorderColor: Colors.orange,

        //#region Card
        SpiritColors.cardBackgroundColor: const Color(0xffffffff),
        SpiritColors.cardShadowTopColor: const Color(0xffffffff),
        SpiritColors.cardBorderTopColor: const Color(0xffffffff),
        SpiritColors.cardShadowBottomColor: const Color(0x29000000),
        SpiritColors.cardBorderBottomColor: const Color(0x7f707070),
        //#endregion

        //#region Buttons
        SpiritColors.okButtonGradientInitBackgroundColor: Colors.orange[800]!,
        SpiritColors.okButtonGradientFinalBackgroundColor: Colors.orange[800]!,
        SpiritColors.okButtonTextColor: Colors.white,
        SpiritColors.cancelButtonGradientInitBackgroundColor: Colors.orange[100]!,
        SpiritColors.cancelButtonGradientFinalBackgroundColor: Colors.orange[50]!,
        SpiritColors.cancelButtonTextColor: Colors.red,
        //#endregion

        SpiritColors.containerDescricaoGridBackgroundColor: const Color(0xff404857),
        SpiritColors.containerDescricaoTextColor: const Color(0xffecebeb),
        SpiritColors.gridGradientInitBackgroundColor: const Color(0xff343a46),
        SpiritColors.gridGradientFinalBackgroundColor: const Color(0xff343a46),
        SpiritColors.itemGridGradientInitBackgroundColorEnabled: const Color(0xff5d6579),
        SpiritColors.itemGridGradientFinalBackgroundColorEnabled: const Color(0xff4c5567),
        SpiritColors.itemGridTextColorEnabled: const Color(0xffed7f03),
        SpiritColors.itemGridGradientInitBackgroundColorDisabled: const Color(0xff53596b),
        SpiritColors.itemGridGradientFinalBackgroundColorDisabled: const Color(0xff3c4251),
        SpiritColors.itemGridTextColorDisabled: const Color(0xff404857),
        SpiritColors.appBarInitGradientBackgroundColor: const Color(0xffed7f03),
        SpiritColors.appBarFinalGradientBackgroundColor: const Color(0xfff64701),
        SpiritColors.appBarTextColor: const Color(0xffffffff),
        SpiritColors.appBarMenuColor: const Color(0xffffffff),
        /* SpiritColors.okButtonGradientInitBackgroundColor:
            const Color(0xff343a46) */
        SpiritColors.appBarMenuColor: const Color(0xff396583),
      };

  ///#region Código inutilizado
  /* Map<String, Color> get light => {
        'screenBackgroundColor': const Color(0xff343a46),
        // Container acima do grid na tela principal
        'containerDescricoGridBackgroundColor': const Color(0xff404857),
        'containerDescricoTextColor': const Color(0xffecebeb),

        // Grid de categorias de sensores
        'gridGradientInitBackgroundColor': const Color(0xff343a46),
        'gridGradientFinalBackgroundColor': const Color(0xff343a46),

        'itemGridGradientInitBackgroundColorEnabled': const Color(0xff5d6579),
        'itemGridGradientFinalBackgroundColorEnabled': const Color(0xff4c5567),
        'itemGridTextColorEnabled': const Color(0xffed7f03),

        'itemGridGradientInitBackgroundColorDisabled': const Color(0xff53596b),
        'itemGridGradientFinalBackgroundColorDisabled': const Color(0xff3c4251),
        'itemGridTextColorDisabled': const Color(0xff404857),

        // AppBar
        'appBarInitGradientBackgroundColor': const Color(0xffed7f03),
        'appBarFinalGradientBackgroundColor': const Color(0xfff64701),
        'appBarTextColor': const Color(0xffffffff),
        'appBarMenuColor': const Color(0xffffffff),
      };

  Map<String, Color> get dark => {
        'screenBackgroundColor': const Color(0xff000000),
        // Container acima do grid na tela principal
        'containerDescricoGridBackgroundColor': const Color(0xff000000),
        'containerDescricoTextColor': const Color(0xff000000),

        // Grid de categorias de sensores
        'gridGradientInitBackgroundColor': const Color(0xff000000),
        'gridGradientFinalBackgroundColor': const Color(0xff000000),

        'itemGridGradientInitBackgroundColorEnabled': const Color(0xff000000),
        'itemGridGradientFinalBackgroundColorEnabled': const Color(0xff000000),
        'itemGridTextColorEnabled': const Color(0xff000000),

        'itemGridGradientInitBackgroundColorDisabled': const Color(0xff000000),
        'itemGridGradientFinalBackgroundColorDisabled': const Color(0xff000000),
        'itemGridTextColorDisabled': const Color(0xff000000),

        // AppBar
        'appBarInitGradientBackgroundColor': const Color(0xff000000),
        'appBarFinalGradientBackgroundColor': const Color(0xff000000),
        'appBarTextColor': const Color(0xff000000),
        'appBarMenuColor': const Color(0xff000000),
      }; */

/*   Color get screenBackgroundColor => const Color(0xff343a46);

  // Container acima do grid na tela principal
  Color get containerDescricoGridBackgroundColor => const Color(0xff404857);
  Color get containerDescricoTextColor => const Color(0xffecebeb);

  // Grid de categorias de sensores
  Color get gridGradientInitBackgroundColor => const Color(0xff343a46);
  Color get gridGradientFinalBackgroundColor => const Color(0xff343a46);

  Color get itemGridGradientInitBackgroundColorEnabled =>
      const Color(0xff5d6579);
  Color get itemGridGradientFinalBackgroundColorEnabled =>
      const Color(0xff4c5567);
  Color get itemGridTextColorEnabled => const Color(0xffed7f03);

  Color get itemGridGradientInitBackgroundColorDisabled =>
      const Color(0xff53596b);
  Color get itemGridGradientFinalBackgroundColorDisabled =>
      const Color(0xff3c4251);
  Color get itemGridTextColorDisabled => const Color(0xff404857);

  // AppBar
  Color get appBarInitGradientBackgroundColor => const Color(0xffed7f03);
  Color get appBarFinalGradientBackgroundColor => const Color(0xfff64701);
  Color get appBarTextColor => const Color(0xffffffff);
  Color get appBarMenuColor => const Color(0xffffffff);
 */
  ///#endregion
}
