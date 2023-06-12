import 'package:cloud_on_feira/widgets/card.dart';
import 'package:flutter/material.dart';

class DispositivosPage /* <T extends Device> */
    extends StatefulWidget {
  // final Function onSelect;

  const DispositivosPage({
    Key? key,
    // required this.onSelect,
  }) : super(key: key);

  @override
  _DispositivosPageState createState() => _DispositivosPageState();
}

class _DispositivosPageState<T> extends State {
  _DispositivosPageState();
  List<String> devices = [
    'is',
    'sensor magnético',
    'sensor ivp',
    'sirene pgm',
    'interruptor 2 botões',
    'modulo interruptor 1 canal',
    'modulo interruptor 2 canais',
    'lâmpada'
  ];
  List<String> rooms = [
    'Garagem',
    'Sala',
    'Sala',
    'Sala',
    'Sala',
    'Sala',
    'Sala',
    'Sala'
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
  }

  // @override
  // Future<Widget> spiritsList() async {
  //   //List<IDevicePropertiesViewWidget> items;

  //   return ListView.builder(
  //     shrinkWrap: true,
  //     controller: scrollController,
  //     itemCount: 2,
  //     itemBuilder: (context, index) {
  //       return const Column(
  //         children: [
  //           SizedBox(height: 16.0),
  //           // Card with each spirit information
  //           // CardSpiritAtDevicesManagement(
  //           //   spirit: spirits.elementAt(index),
  //           //   onClick: () => {},
  //           // )
  //         ],
  //       );
  //     },
  //   );
  // }

  // @override
  // Widget spiritsListWidget() {
  //   return SingleChildScrollView(
  //     padding: const EdgeInsets.symmetric(horizontal: 0),
  //     child: FutureBuilder(
  //       future: spiritsList(),
  //       builder: (context, AsyncSnapshot snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting) {
  //           return const Waiting();
  //         } else {
  //           return snapshot.data;
  //         }
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Dispositivos'),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [Icon(Icons.location_on), Text('Casa')],
              ),
            ),
          ]),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fundoAlt.png'), fit: BoxFit.cover)),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver:
                  // SliverList(
                  //     delegate: SliverChildListDelegate([
                  //   SizedBox(
                  //     width: MediaQuery.of(context).size.width * 0.9,
                  //     child: const Card(child: NoSite()),
                  //   )
                  // ]))
                  SliverList(
                delegate: SliverChildListDelegate(
                  [
                    CustomCard(
                      child: ListTileTheme(
                        dense: true,
                        child: ExpansionTile(
                          /* trailing: Icon(Icons.keyboard_arrow_down), */
                          leading: SizedBox(
                            height: 24,
                            child: Image.asset(
                              'assets/icone_spirit_cinza.png',
                              color: Theme.of(context).colorScheme.secondary,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Gateway',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 20),
                              ),
                              Icon(Icons.settings)
                            ],
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                child: const Text('8 dispositivos'),
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             const ListarDispositivos()));
                                },
                              ),
                              const Icon(Icons.add)
                              // _addDeviceIcon(),
                            ],
                          ),
                          children: <Widget>[
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: devices.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    margin: EdgeInsets.zero,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          RichText(
                                            textAlign: TextAlign.start,
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                const TextSpan(
                                                    text: 'Nome:',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black)),
                                                TextSpan(
                                                    text:
                                                        ' ${devices[index].toUpperCase()}',
                                                    style: const TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text('Ambiente: '),
                                              Text(
                                                rooms[index],
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )
                            //  ListTile(
                            //   title:  Text('is \n  sensor magnético \n sensor ivp \nsirene pgm\n  interruptor 2 botões\n modulo interruptor 1 canal\n modulo interruptor 2 canais'),
                            //  )
                          ],
                        ),
                      ),
                    )
                    // spiritsListWidget(),

                    // addSpiritButton(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
