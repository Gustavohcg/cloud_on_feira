import 'package:flutter/material.dart';

class ListarDispositivos extends StatelessWidget {
  const ListarDispositivos({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dispositivos'),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fundoAlt.png'), fit: BoxFit.cover)),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverToBoxAdapter(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: devices.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
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
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('Ambientes:'),
                                    Text(
                                      rooms[index],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
