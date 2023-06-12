import 'dart:async';
import 'dart:math';

import 'package:cloud_on_feira/base_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  bool armeTotal = false;
  bool armeParcial = false;
  Random random = Random();

  Future<void> _disparo(BuildContext context, int setor) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Theme(
            data: ThemeData(dialogBackgroundColor: Colors.white),
            child: AlertDialog(
              shadowColor: Colors.red,
              icon: Lottie.asset('assets/siren.json',
                  fit: BoxFit.contain, height: 80),
              title: const Text('Disparo de alarme'),
              content: Text('Alarme disparado pelo sensor no setor $setor'),
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

  Future<void> _dialogBuilder(
      BuildContext context, String totalParcial, bool armado) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Theme(
            data: ThemeData(dialogBackgroundColor: Colors.white),
            child: AlertDialog(
              title: totalParcial == 'total'
                  ? const Text('Arme total')
                  : const Text('Arme parcial'),
              content: totalParcial == 'total' && armado
                  ? const Text("Arme total foi ativado")
                  : totalParcial == 'total' && !armado
                      ? const Text("Arme total foi desativado")
                      : totalParcial == 'parcial' && armado
                          ? const Text("Arme parcial foi ativado")
                          : const Text("Arme parcial foi desativado"),
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

  @override
  Widget build(BuildContext context) {
    return BasePage( body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/fundo_novo.jpg'),
                      fit: BoxFit.cover)),
              child: CustomScrollView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                slivers: <Widget>[
                  const SliverAppBar(
                      backgroundColor: Colors.transparent,
                      expandedHeight: 50,
                      elevation: 0,
                      centerTitle: true,
                      title: Text(
                        'Segurança',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      actions: [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Row(
                            children: [Icon(Icons.location_on), Text('Casa')],
                          ),
                        )
                      ]),
                  SliverToBoxAdapter(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 40, 8, 0),
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  armeTotal = !armeTotal;
                                });
                                _dialogBuilder(context, 'total', armeTotal);
                                if (armeTotal) {
                                  int numeroSorteado = random.nextInt(2) + 3;
                                  int setor = random.nextInt(3) + 1;
                                  late Timer _timer;
                                  _timer = Timer(
                                      Duration(seconds: numeroSorteado), () {
                                    BasePage.disparo(setor);
                                  });
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius: BorderRadius.circular(12)),
                                height: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    !armeTotal
                                        ? Image.asset(
                                            'assets/desarmado.png',
                                            fit: BoxFit.contain,
                                            width: 50,
                                            height: 50,
                                          )
                                        : Image.asset(
                                            'assets/armado.png',
                                            fit: BoxFit.contain,
                                            width: 50,
                                            height: 50,
                                          ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    !armeTotal
                                        ? const Text(
                                            'Arme total desativado',
                                            textAlign: TextAlign.center,
                                          )
                                        : const Text('Arme total ativado',
                                            textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        Flexible(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  armeParcial = !armeParcial;
                                });
                                _dialogBuilder(context, 'parcial', armeParcial);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius: BorderRadius.circular(12)),
                                height: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    !armeParcial
                                        ? Image.asset(
                                            'assets/desarmado.png',
                                            fit: BoxFit.contain,
                                            width: 50,
                                            height: 50,
                                          )
                                        : Image.asset(
                                            'assets/armado.png',
                                            fit: BoxFit.contain,
                                            width: 50,
                                            height: 50,
                                          ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    !armeParcial
                                        ? const Text(
                                            'Arme parcial desativado',
                                            textAlign: TextAlign.center,
                                          )
                                        : const Text('Arme parcial ativado',
                                            textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),);
    

  }
}
