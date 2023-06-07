import 'package:cloud_on_feira/widgets/bottom_navigation_bar.dart';
import 'package:cloud_on_feira/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '/widgets/header.dart';
import '/widgets/waiting.dart';

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
  late List<String> rooms = ['oi', 'tudo bem'];

  late int siteId;

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

  addIcon() {
    return Image.asset(
      'assets/icone_plus.png',
      width: 50,
      height: 50,
    );
  }

  line() {
    return const Divider(
      color: Color(0xffFF6600),
      thickness: 2,
      indent: 20,
      endIndent: 20,
    );
  }

  @override
  Widget noRoom() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(8, 20, 8, 12),
      child: Center(
        child: Column(
          children: [
            Icon(Icons.meeting_room_outlined, size: 100),
            SizedBox(
              height: 20,
            ),
            Text(
              'Sem ambiente',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget card() {
    return Center(
      child: Column(
        children: [
          Card(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: FutureBuilder(
                future: buildListRooms(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Waiting();
                  } else {
                    return snapshot.data;
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget addResourceContainer() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            //image: DecorationImage(image: AssetImage('images/fundo.jpg'),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
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

  @override
  Future<Widget> buildListRooms() async {
    return rooms.isEmpty
        ? noRoom()
        : ReorderableListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: rooms.length,
            itemBuilder: (context, index) {
              List<dynamic> gridList = [''];
              // if (rooms[index].isNotEmpty) {
              //   gridList.addAll(rooms[index]);
              // }
              return Container(
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
                        const Flexible(
                          flex: 1,
                          child: Icon(
                            Icons.drag_handle_rounded,
                            color: Color(0xffFF6600),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: const Color(0xffFF6600),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomScrollView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          slivers: <Widget>[
                            SliverGrid(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 4,
                                mainAxisSpacing: 4,
                              ),
                              delegate: SliverChildBuilderDelegate(
                                childCount: gridList.length,
                                (context, i) {
                                  if (i == 0) {
                                    return addResourceContainer();
                                  } else {
                                    return InkWell(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Colors.amber),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Text(rooms[index]),
                                            )
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        // presenter.goToIndividualResourcePage(
                                        //     rooms[index].resources[i].id!,
                                        //     rooms[index].id!,
                                        //     rooms[index]
                                        //         .resources[i]
                                        //         .description!);
                                      },
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            onReorder: (int oldIndex, int newIndex) {
              if (newIndex > oldIndex) {
                newIndex -= 1;
              }
              final item = rooms.removeAt(oldIndex);
              rooms.insert(newIndex, item);
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffFF6600),
          onPressed: () {},
          child: const Icon(Icons.add)),
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
                      expandedHeight: 200.0,
                      elevation: 0,
                      actions: [Icon(Icons.location_on)],
                      flexibleSpace: Header(
                        image: 'assets/cena_fundo.png',
                        organograma: false,
                        title: 'Ambientes',
                      )),
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
      bottomNavigationBar: const SpiritBottomNavigationBar(),
    );
  }
}
