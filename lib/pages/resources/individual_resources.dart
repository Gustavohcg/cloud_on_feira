import 'package:cloud_on_feira/pages/rooms/rooms.dart';
import 'package:flutter/material.dart';

class IndividualResources extends StatefulWidget {
  IndividualResources({super.key, required this.resource});
  Resource resource;

  @override
  State<IndividualResources> createState() => _IndividualResourcesState();
}

class _IndividualResourcesState extends State<IndividualResources> {
  Widget buildResourceLuzPrincipal() {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  Text(
                    widget.resource.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  widget.resource.icon
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  'Descrição: recurso que acende a iluminação principal da sala'),
              const SizedBox(
                height: 20,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('Tipo de recurso: Iluminação')]),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dispositivos associados ao recurso:',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '- Lâmpada',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildResourceLuzAmbiente() {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  Text(
                    widget.resource.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  widget.resource.icon
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  'Descrição: iluminação ambiente para assistir filmes '),
              const SizedBox(
                height: 20,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('Tipo de recurso: Iluminação')]),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dispositivos associados ao recurso:',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '- Módulo interruptor 2 canais',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildResourcePorta() {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  Text(
                    widget.resource.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  widget.resource.icon
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  'Descrição: recurso para saber quando a porta da sala é aberta'),
              const SizedBox(
                height: 20,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('Tipo de recurso: Segurança')]),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dispositivos associados ao recurso:',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '- Sensor magnético',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildResourceMovimento() {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  Text(
                    widget.resource.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  widget.resource.icon
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  'Descrição: recurso para verificar movimentação no corredor'),
              const SizedBox(
                height: 20,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('Tipo de recurso: segurança')]),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dispositivos associados ao recurso:',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '- Sensor IVP',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildResourceLuzQuadro() {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  Text(
                    widget.resource.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  widget.resource.icon
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Descrição: luz do quadro perto da janela da sala'),
              const SizedBox(
                height: 20,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('Tipo de recurso: Iluminação')]),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dispositivos associados ao recurso:',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '- Interruptor 2 botões',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }

  Widget buildResourcePortao() {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  Text(
                    widget.resource.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  widget.resource.icon
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Descrição: abertura e fechamento do portão'),
              const SizedBox(
                height: 20,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('Tipo de recurso: Portão')]),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dispositivos associados ao recurso:',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '- Is triflex Connect',
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '- Sensor magnético',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  retWidgets() {
    switch (widget.resource.name) {
      case 'Luz principal':
        return buildResourceLuzPrincipal();
      case 'Luz ambiente':
        return buildResourceLuzAmbiente();
      case 'Porta':
        return buildResourcePorta();
      case 'Movimento':
        return buildResourceMovimento();
      case 'Luz quadro':
        return buildResourceLuzQuadro();
      case 'Portão':
        return buildResourcePortao();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.resource.name),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [Icon(Icons.location_on), Text('Casa')],
            ),
          )
        ],
      ),
      body: Column(children: [
        Expanded(
            child: Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/fundo_novo.jpg'),
            fit: BoxFit.cover,
          )),
          child: retWidgets(),
        ))
      ]),
    );
  }
}
