import 'dart:math' as math;

import 'package:cloud_on_feira/widgets/bottom_navigation_bar.dart';
import 'package:cloud_on_feira/widgets/header.dart';
import 'package:flutter/material.dart';

class ScenesPage extends StatefulWidget {
  const ScenesPage({super.key});

  @override
  State<ScenesPage> createState() => _ScenesPageState();
}

class _ScenesPageState extends State<ScenesPage> {
  @override
  @override
  // late Site site;
  @override
  // late List<Scene> cenas;
  @override
  // Scene? cenaSelecionada;

  @override
  late final List<Widget> _containerList = [
    GestureDetector(
      onTap: () {
        _addNewContainer();
      },
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffD9D9D9),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Criar nova cena',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: saveIcone(),
            ),
            line(),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: addIcon(),
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  //Chama logo após o initState.
  //Esse cógido no initState estava dando erro.
  void didChangeDependencies() {
    super.didChangeDependencies();
    // if (site.id != 0) {
    // }
  }

  Widget textTitle() {
    return const Center(
      child: Text('Cenas',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24)),
    );
  }

  // List<Widget> buildActionsCards() {
  //   List<Widget> ret = <Widget>[];
  //   List<ResourceAction> actions = [];
  //   actions.clear();
  //   for (ResourceAction resourceAction in cenaSelecionada!.actions) {
  //     actions.add(resourceAction);
  //     ret.add(
  //       ListTileTheme(
  //         dense: true,
  //         child: ExpansionTile(
  //           title: Text(resourceAction.description!),
  //           children: [
  //             Text('Ação'),
  //             Text('Dispositivo associado'),
  //             //Não sei se o ListView.builder vai funcionar aqui dentro de outra lista :(
  //             ListView.builder(
  //               shrinkWrap: true,
  //               itemCount: resourceAction.devices!.length,
  //               itemBuilder: (context, index) {
  //                 return Text(resourceAction.devices![index].description!);
  //               },
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   }
  //   return ret;
  // }

  @override
  SliverPersistentHeader makeHeader(Widget widget) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 20.0,
        maxHeight: 20.0,
        child: Container(
          /* decoration: new BoxDecoration(
            color: Colors.green,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(8.0),
              topRight: const Radius.circular(8.0),
            ),
          ), */
          child: Center(
            child: widget,
          ),
        ),
      ),
    );
  }

  @override
  SliverPersistentHeader makeFooter() {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 8.0,
        maxHeight: 8.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            height: 100.0,
            margin: const EdgeInsets.only(
                bottom: 6.0), //Same as `blurRadius` i guess
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  SliverPersistentHeader makeSpace() {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 8.0,
        maxHeight: 8.0,
        child: const SizedBox(
          height: 10,
          /* decoration: new BoxDecoration(
            color: Colors.transparent,
          ), */
          child: Text(""),
        ),
      ),
    );
  }

  Widget cabecalho() {
    return Image.asset('assets/cena_fundo.png');
  }

  saveIcone() {
    return Image.asset(
      'assets/iconePasta.png',
      width: 30,
    );
  }

  addIcon() {
    return Image.asset('assets/icone_plus.png');
  }

  line() {
    return const Divider(
      color: Color(0xffFF6600),
      thickness: 2,
      indent: 20,
      endIndent: 20,
    );
  }

  void _addNewContainer() {
    setState(() {
      _containerList.add(Container(
        width: 80,
        height: 130,
        decoration: BoxDecoration(
            color: const Color(0xffD9D9D9),
            borderRadius: BorderRadius.circular(12)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Chegar em casa',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: saveIcone(),
                    ),
                    line(),
                    const Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              // child: Icon(
                              //   Icons.circle,
                              //   size: 5,
                              // ),
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            // Expanded(
                            //   child: ListView.builder(
                            //     physics: ScrollPhysics(),
                            //     shrinkWrap: true,
                            //     itemCount: presenter.locals.length,
                            //     itemBuilder: (BuildContext context, int index) {
                            //       return ListTile(
                            //         title: Text(presenter.locals[index]),
                            //       );
                            //     },
                            //     itemExtent: null,
                            //   ),
                            // )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ));
    });
  }

  Widget card() {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                child: SizedBox(
                  //height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                childAspectRatio: 0.6),
                        itemCount: _containerList.length,
                        itemBuilder: (context, index) {
                          return _containerList[index];
                        },
                      ),
                    ),
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
                    expandedHeight: 200.0,
                    elevation: 0,
                    actions: [Icon(Icons.location_on)],
                    flexibleSpace: Header(
                      image: 'assets/cena_fundo.png',
                      organograma: false,
                      title: 'Cenas',
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        // cabecalho(),
                        textTitle(),
                        card()
                      ],
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

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
