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
                  Icon(Icons.lightbulb_outline_rounded)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildResourceLuzAmbiente() {
    return Placeholder();
  }

  Widget buildResourcePorta() {
    return Placeholder();
  }

  Widget buildResourceMovimento() {
    return Placeholder();
  }

  Widget buildResourceLuzQuadro() {
    return Placeholder();
  }

  Widget buildResourcePortao() {
    return Placeholder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.resource.name),
      ),
      body: Column(children: [
        Expanded(
            child: Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/fundo.jpg'),
            fit: BoxFit.cover,
          )),
          child: buildResourceLuzPrincipal(),
        ))
      ]),
    );
  }
}
