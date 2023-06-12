import 'dart:async';

import 'package:cloud_on_feira/widgets/bottom_navigation_bar.dart';
import 'package:cloud_on_feira/widgets/drawer.dart';
import 'package:cloud_on_feira/widgets/show_bottom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Cenas {
  String name;
  Widget icon;
  bool ativando;

  Cenas(this.name, this.icon, this.ativando);
}

class ScenesPage extends StatefulWidget {
  const ScenesPage({super.key});

  @override
  State<ScenesPage> createState() => _ScenesPageState();
}

class _ScenesPageState extends State<ScenesPage> {
  late Timer _timer;
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

  estado(int index) {}

  Widget card() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.6),
                  itemCount: cenas.length,
                  itemBuilder: (context, index) {
                    return InkWell(
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
                                onPressedSucces: Navigator.of(context).pop);
                          });
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(12)),
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
                    );
                  },
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
      body: Column(
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
                    pinned: true,
                    backgroundColor: Colors.transparent,
                    expandedHeight: 50,
                    elevation: 0,
                    centerTitle: true,
                    title: Text(
                      'Cenas',
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
                    ],

                    /*  flexibleSpace: Header(
                        image: 'assets/cena_fundo.png',
                        organograma: false,
                        title: 'Ambientes',
                      ) */
                  ),
                  SliverToBoxAdapter(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [card()],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const SpiritBottomNavigationBar(),
    );
  }
}
