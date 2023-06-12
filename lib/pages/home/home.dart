import 'dart:async';

import 'package:cloud_on_feira/pages/scenes/scenes.dart';
import 'package:cloud_on_feira/widgets/bottom_navigation_bar.dart';
import 'package:cloud_on_feira/widgets/drawer.dart';
import 'package:cloud_on_feira/widgets/show_bottom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DashboardPage extends StatefulWidget {
  /* final Function(Scene) onSceneTap;
  final List<Scene> scenes;
  final Function(Room) onRoomTap;
  final List<Room> rooms; */

  const DashboardPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Cenas c1 = Cenas(
      'Cinema',
      const Icon(
        Icons.movie_creation,
        color: Color(0xffFF6600),
      ),
      false);
  Cenas c2 = Cenas(
      'Sair de casa',
      const Icon(
        Icons.home,
        color: Color(0xffFF6600),
      ),
      false);
  Cenas c3 = Cenas(
      'Chegar em casa',
      const Icon(
        Icons.home,
        color: Color(0xffFF6600),
      ),
      false);
  Cenas c4 = Cenas(
      'Acordar',
      const Icon(
        Icons.bed,
        color: Color(0xffFF6600),
      ),
      false);
  Cenas c5 = Cenas(
      'Dormir',
      const Icon(
        Icons.bed,
        color: Color(0xffFF6600),
      ),
      false);
  late List<Cenas> cenas = [c1, c2, c3, c4, c5];
  late Timer _timer;

  late Color borderColor = Colors.red;
  late Color borderColor2 = Colors.red;
  late Color borderColor3 = Colors.green;
  late Color borderColor4 = Colors.green;
  late Color borderColor5 = Colors.red;
  late Color borderColor6 = Colors.red;
  late Color borderColor7 = Colors.red;
  late Color borderColor8 = Colors.red;
  late Color borderColor9 = Colors.red;

  void changeBorderColor() {
    setState(() {
      borderColor = (borderColor == Colors.red) ? Colors.green : Colors.red;
    });
  }

  void changeBorderColor2() {
    setState(() {
      borderColor2 = (borderColor2 == Colors.red) ? Colors.green : Colors.red;
    });
  }

  void changeBorderColor3() {
    setState(() {
      borderColor3 = (borderColor3 == Colors.green) ? Colors.red : Colors.green;
    });
  }

  void changeBorderColor4() {
    setState(() {
      borderColor4 = (borderColor4 == Colors.green) ? Colors.red : Colors.green;
    });
  }

  void changeBorderColor5() {
    setState(() {
      borderColor5 = (borderColor5 == Colors.red) ? Colors.green : Colors.red;
    });
  }

  void changeBorderColor6() {
    setState(() {
      borderColor6 = (borderColor6 == Colors.red) ? Colors.green : Colors.red;
    });
  }

  void changeBorderColor7() {
    setState(() {
      borderColor7 = (borderColor7 == Colors.red) ? Colors.green : Colors.red;
    });
  }

  void changeBorderColor8() {
    setState(() {
      borderColor8 = (borderColor8 == Colors.red) ? Colors.green : Colors.red;
    });
  }

  void changeBorderColor9() {
    setState(() {
      borderColor9 = (borderColor9 == Colors.red) ? Colors.green : Colors.red;
    });
  }

  Widget containers() {
    return Center(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      //  color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Segurança',
                            style: TextStyle(
                                color: Color(0xffFF6600),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          GridView.count(
                            physics: const NeverScrollableScrollPhysics(),
                            childAspectRatio: 0.5,
                            crossAxisCount: 4,
                            shrinkWrap: true,
                            children: [
                              GestureDetector(
                                onTap: changeBorderColor7,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 65,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border:
                                              Border.all(color: borderColor7),
                                        ),
                                        child: Container(
                                          child: Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.security_outlined,
                                                    color: borderColor7),
                                                Divider(
                                                  color: borderColor7,
                                                ),
                                                const Text(
                                                  'Porta',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Sala',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: changeBorderColor8,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 65,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border:
                                              Border.all(color: borderColor8),
                                        ),
                                        child: Container(
                                          child: Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.garage_outlined,
                                                    color: borderColor8),
                                                Divider(
                                                  color: borderColor8,
                                                ),
                                                const Text(
                                                  'Portão',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Garagem',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: changeBorderColor9,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 65,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border:
                                              Border.all(color: borderColor9),
                                        ),
                                        child: Container(
                                          child: Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.security_outlined,
                                                    color: borderColor9),
                                                Divider(
                                                  color: borderColor9,
                                                ),
                                                const Text(
                                                  'Movimento',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Sala',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'Cenas',
                        style: TextStyle(
                            color: Color(0xffFF6600),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                childAspectRatio: 0.6),
                        itemCount: cenas.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 65,
                            height: 130,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  cenas[index].ativando = true;
                                });
                                _timer = Timer(const Duration(seconds: 2), () {
                                  setState(() {
                                    cenas[index].ativando = false;
                                    ShowBottomDialog().showBottomDialog(
                                        sucesso: true,
                                        context: context,
                                        successText:
                                            'A cena ${cenas[index].name} foi ativada',
                                        onPressedSucces:
                                            Navigator.of(context).pop);
                                  });
                                });
                              },
                              child: Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.orange)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: !cenas[index].ativando
                                          ? cenas[index].icon
                                          : Lottie.asset('assets/amp.json',
                                              fit: BoxFit.contain, height: 40),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      cenas[index].name,
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'Ambientes e Recursos',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffFF6600),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        childAspectRatio: 0.5,
                        crossAxisCount: 4,
                        shrinkWrap: true,
                        children: [
                          GestureDetector(
                            onTap: changeBorderColor,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: borderColor),
                                    ),
                                    child: Container(
                                      child: Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                                Icons.lightbulb_outline_rounded,
                                                color: borderColor),
                                            Divider(
                                              color: borderColor,
                                            ),
                                            const Text(
                                              'Luz principal',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Sala',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: changeBorderColor2,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: borderColor2),
                                    ),
                                    child: Container(
                                      child: Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.security_outlined,
                                                color: borderColor2),
                                            Divider(
                                              color: borderColor2,
                                            ),
                                            const Text(
                                              'Porta',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Sala',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: changeBorderColor3,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: borderColor3),
                                    ),
                                    child: Container(
                                      child: Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                                Icons.lightbulb_outline_rounded,
                                                color: borderColor3),
                                            Divider(
                                              color: borderColor3,
                                            ),
                                            const Text(
                                              'Luz quadro',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Sala',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: changeBorderColor4,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: borderColor4),
                                    ),
                                    child: Container(
                                      child: Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                                Icons.lightbulb_outline_rounded,
                                                color: borderColor4),
                                            Divider(
                                              color: borderColor4,
                                            ),
                                            const Text(
                                              'Luz ambiente',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Sala',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: changeBorderColor5,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: borderColor5),
                                    ),
                                    child: Container(
                                      child: Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.security_outlined,
                                                color: borderColor5),
                                            Divider(
                                              color: borderColor5,
                                            ),
                                            const Text(
                                              'Movimento',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Sala',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: changeBorderColor6,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: borderColor6),
                                    ),
                                    child: Container(
                                      child: Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.garage_outlined,
                                                color: borderColor6),
                                            Divider(
                                              color: borderColor6,
                                            ),
                                            const Text(
                                              'Portão',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Garagem',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      extendBody: false,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fundo_novo.jpg'), fit: BoxFit.cover)),
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            const SliverAppBar(
              title: Text('Dashboard'),
              centerTitle: true,
              expandedHeight: 50.0,
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [Icon(Icons.location_on), Text('Casa')],
                  ),
                )
              ],
              // flexibleSpace: Header(
              //   image: 'assets/cabecalho.png',
              //   organograma: true,
              //   organogramaImage: 'assets/icone_organograma.png',
              // ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: containers(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const SpiritBottomNavigationBar(),
    );
  }
}
