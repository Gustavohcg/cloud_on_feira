import 'package:cloud_on_feira/base_page.dart';
import 'package:cloud_on_feira/pages/resources/individual_resources.dart';
import 'package:flutter/material.dart';

import '/widgets/waiting.dart';

class Resource {
  String name;
  Widget icon;
  bool ativado = false;

  Resource(this.name, this.icon, this.ativado);
}

class RoomsPage extends StatefulWidget {
  /* final Function(Room) onRoomTap;
  final List<Room> rooms; */

  const RoomsPage({
    Key? key,
    /* required this.onRoomTap,
    required this.rooms, */
  }) : super(key: key);

  @override
  State<RoomsPage> createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  late List<String> rooms = ['Sala', 'Garagem'];

  Resource r1 = Resource(
      'Luz principal',
      const Icon(
        Icons.lightbulb_outline_rounded,
      ),
      false);
  Resource r2 = Resource(
      'Luz ambiente',
      const Icon(
        Icons.lightbulb_outline_rounded,
      ),
      false);
  Resource r3 = Resource(
      'Porta',
      const Icon(
        Icons.security_outlined,
      ),
      false);
  Resource r4 =
      Resource('Movimento', const Icon(Icons.security_outlined), false);

  Resource r5 = Resource(
      'Luz quadro',
      const Icon(
        Icons.lightbulb_outline_rounded,
      ),
      false);

  Resource r7 = Resource(
      'Portão',
      const Icon(
        Icons.garage_outlined,
      ),
      false);

  late List<Resource> resources1 = [r1, r2, r3, r4, r5];
  late List<Resource> resources2 = [r7];

  @override
  void initState() {
    super.initState();
  }

  @override
  //Chama logo após o initState.
  //Esse cógido no initState estava dando erro.
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  Widget card() {
    return Center(
      child: Column(
        children: [
          FutureBuilder(
            future: buildListRooms(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Waiting();
              } else {
                return snapshot.data;
              }
            },
          ),
        ],
      ),
    );
  }

  Widget addResourceContainer() {
    return InkWell(
      onTap: () {},
      child: Container(
        /*  decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            //image: DecorationImage(image: AssetImage('images/fundo.jpg'),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(8)), */
        child: const FittedBox(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                child: Text(
                  'Novo recurso',
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Icon(
                  Icons.add,
                  color: Color(0xffFF6600),
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Widget> buildListRooms() async {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: rooms.length,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.transparent,
          //Essa key é necessária para poder arrastar os itens da lista
          key: Key(rooms[index]),
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(flex: 1, child: Text('')),
                  Flexible(
                    flex: 1,
                    child: Text(
                      rooms[index],
                      style: const TextStyle(
                          fontSize: 15,
                          color: Color(0xffFF6600),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Flexible(flex: 1, child: Text('')),
                ],
              ),
              Container(
                height: 230,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.3),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    slivers: <Widget>[
                      index == 0
                          ? SliverGrid(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 15,
                              ),
                              delegate: SliverChildBuilderDelegate(
                                childCount: resources1.length,
                                (context, i) {
                                  return StatefulBuilder(
                                    builder: (context, setState) {
                                      return InkWell(
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: resources1[i].ativado
                                                    ? const Color.fromRGBO(
                                                        76, 175, 80, 0.1)
                                                    : const Color.fromRGBO(
                                                        244, 67, 54, 0.1),
                                                border: Border.all(
                                                    color: resources1[i].ativado
                                                        ? const Color.fromRGBO(
                                                            76, 175, 80, 1)
                                                        : const Color.fromRGBO(
                                                            244, 67, 54, 1),
                                                    width: 1),
                                                //image: DecorationImage(image: AssetImage('images/fundo.jpg'),fit: BoxFit.cover),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Column(
                                                children: [
                                                  FittedBox(
                                                      child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        resources1[i].name,
                                                      ),
                                                    ],
                                                  )),
                                                  const SizedBox(
                                                    height: 18,
                                                  ),
                                                  resources1[i].icon,
                                                ],
                                              ),
                                            )),
                                        onTap: () {
                                          setState(
                                            () {
                                              resources1[i].ativado =
                                                  !resources1[i].ativado;
                                            },
                                          );
                                        },
                                        onDoubleTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      IndividualResources(
                                                          resource:
                                                              resources1[i])));
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            )
                          : SliverGrid(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 15,
                              ),
                              delegate: SliverChildBuilderDelegate(
                                childCount: resources2.length,
                                (context, i) {
                                  return StatefulBuilder(
                                    builder: (context, setState) {
                                      return InkWell(
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: resources2[i].ativado
                                                    ? const Color.fromRGBO(
                                                        76, 175, 80, 0.1)
                                                    : const Color.fromRGBO(
                                                        244, 67, 54, 0.1),
                                                border: Border.all(
                                                    color: resources2[i].ativado
                                                        ? const Color.fromRGBO(
                                                            76, 175, 80, 1)
                                                        : const Color.fromRGBO(
                                                            244, 67, 54, 1),
                                                    width: 1),
                                                //image: DecorationImage(image: AssetImage('images/fundo.jpg'),fit: BoxFit.cover),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Column(
                                                children: [
                                                  FittedBox(
                                                      child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        resources2[i].name,
                                                      ),
                                                    ],
                                                  )),
                                                  const SizedBox(
                                                    height: 18,
                                                  ),
                                                  resources2[i].icon,
                                                ],
                                              ),
                                            )),
                                        onTap: () {
                                          setState(
                                            () {
                                              resources2[i].ativado =
                                                  !resources2[i].ativado;
                                            },
                                          );
                                        },
                                        onDoubleTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      IndividualResources(
                                                          resource:
                                                              resources2[i])));
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Ambientes',
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/fundo_novo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
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
                      'Ambientes',
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
                  // NotificationsWidgetService(),
                  SliverToBoxAdapter(
                    child: card(),
                  ),

                  /* SliverList(
                      delegate: SliverChildListDelegate([

                  ])) */
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
