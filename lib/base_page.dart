import 'dart:async';

import 'package:cloud_on_feira/main.dart';
import 'package:cloud_on_feira/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'widgets/bottom_navigation_bar.dart';

class BasePage extends StatefulWidget {
  Widget body;
  BasePage({required this.body, super.key});

  @override
  State<BasePage> createState() => _BasePageState();

  static Future<void> disparo(int setor) {
    return showDialog<void>(
      context: MyApp.navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return Theme(
            data: ThemeData(dialogBackgroundColor: Colors.white),
            child: AlertDialog(
              shadowColor: Colors.red,
              icon: Lottie.asset('assets/siren.json',
                  fit: BoxFit.contain, height: 80),
              title: const Text('Disparo de alarme'),
              content: setor == 1
                  ? const Text('Violação segurança na porta da sala')
                  : setor == 2
                      ? const Text('Detecção de movimento na sala')
                      : const Text(
                          'Violação de segurança no portão na garagem'),
              actions: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text(
                    'OK',
                    style: TextStyle(color: Color(0xffFF6600)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
      },
    );
  }
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      extendBody: false,
      body: widget.body,
      bottomNavigationBar: const SpiritBottomNavigationBar(),
    );
  }
}
