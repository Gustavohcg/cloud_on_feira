import 'package:cloud_on_feira/widgets/bottom_navigation_bar.dart';
import 'package:cloud_on_feira/widgets/drawer.dart';
import 'package:cloud_on_feira/widgets/header.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  /* final Function(Scene) onSceneTap;
  final List<Scene> scenes;
  final Function(Room) onRoomTap;
  final List<Room> rooms; */

  const DashboardPage({
    Key? key,
  }) : super(key: key);

  Widget containers() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(
            16.0), // adicionando padding em volta da coluna
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.orange,
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
                            fontSize: 15,
                            color: Color(0xffFF6600),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.orange,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Cenas',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffFF6600),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.orange,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      // appBar: AppBar(
      //   bottom: const PreferredSize(
      //     preferredSize: Size.fromHeight(48),
      //     child: SpiritBottomNavigationBar(),
      //   ),
      // ),
      extendBody: true,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fundo_novo.jpg'), fit: BoxFit.cover)),
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            const SliverAppBar(
                pinned: true,
                expandedHeight: 200.0,
                backgroundColor: Colors.orange,
                elevation: 0,
                actions: [
                  Icon(Icons.location_on)
                  // SitesMenu()
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 16),
                  //   child: CircleAvatar(
                  //     backgroundColor: Colors.white,
                  //     child: Icon(Icons.fmd_good_sharp),
                  //   ),
                  // )
                ],
                flexibleSpace: Header(
                  image: 'assets/cabecalho.png',
                  organograma: true,
                  organogramaImage: 'assets/icone_organograma.png',
                )),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Card(
                    // elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: SizedBox(
                      width: 350,
                      child: containers(),
                    ),
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
