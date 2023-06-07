import 'package:flutter/material.dart';
//import '/services/service_locator.dart';
//import '/services/themesService.dart';
//import '/themes/custom_color_scheme.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  const CustomCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final _themesService = /*servicelocator*/Get.find<ThemesService>();
    return Card(
      //elevation: 8,
      child: Container(
        /* decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border(
            top: BorderSide(width: 0.5, color: _themesService.colorScheme(context)[SpiritColors.appBarInitGradientBackgroundColor]),
            left: BorderSide(width: 0.5, color: _themesService.colorScheme(context)[SpiritColors.appBarInitGradientBackgroundColor]),
          ),
          color: Colors.white,
        ), */
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, top: 0, right: 0, bottom: 0),
                    child: child,
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    )
        /* Stack(
      children: <Widget>[
        // Adobe XD layer: 'FundoCard' (shape)
        Container(
          /* width: 340.0,
          height: 107.0, */
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(32.0),
              bottomRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
            ),
            color: const Color(0x1aec9532),
            border: Border.all(width: 1.0, color: const Color(0xffec9532)),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(16.0, 1.0),
          child: child,
          /* ), */
        ),
      ],
    ) */
        ;
  }
}
