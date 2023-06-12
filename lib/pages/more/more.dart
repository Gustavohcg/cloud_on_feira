import 'package:cloud_on_feira/base_page.dart';
import 'package:cloud_on_feira/pages/dispositivos/dispositivos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MorePage extends StatelessWidget {
  const MorePage({
    super.key,
  });

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Confirmação',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            'Tem certeza de que deseja sair?',
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Cancelar',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                'Sim',
                style: TextStyle(
                  color: Color(0xffFC8B21),
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget cabecalho() {
    return Image.asset('assets/cena_fundo.png');
  }

  Widget _getIcon(int index) {
    switch (index) {
      case 0:
        return const Icon(
          Icons.notifications,
          size: 50,
        );
      case 1:
        return SvgPicture.asset(
          'assets/configApp.svg',
          width: 50,
          height: 50,
        );
      case 2:
        return SvgPicture.asset(
          'assets/icone diso.menu.svg',
          width: 50,
        );
      // case 2:
      //   return Icons.meeting_room_outlined;
      case 3:
        return SvgPicture.asset('assets/configApp.svg');
      case 4:
        return SvgPicture.asset('assets/automacao.svg');
      case 5:
        return SvgPicture.asset('assets/icone sobre.svg');
      case 6:
        return SvgPicture.asset('assets/sair.svg');
      default:
        return SvgPicture.asset('assets/sair.svg');
    }
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Notificações';
      case 1:
        return 'Configurações';
      case 2:
        return 'Locais';
      // case 2:
      //   return tr('Cenas');
      case 3:
        return 'Dispositivos';
      case 4:
        return 'Automação';
      case 5:
        return 'Sobre';
      case 6:
        return 'Sair';
      default:
        return 'Tema Desconhecido';
    }
  }

  void _functionTap(int index, context) {
    switch (index) {
      case 0:
        // presenter.openNotificaitons();
        break;
      case 1:
        // presenter.openAppConfig();
        break;
      case 2:
        // presenter.openLocaisConfig();
        break;
      // case 2:
      //   presenter.openScenes();
      //   break;
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DispositivosPage()));
        break;
      case 4:
        // presenter.openAutomationConfig();
        break;
      case 5:
        // presenter.openAbout();
        break;
      case 6:
        showAlertDialog(context);
        break;
      default:
        break;
    }
  }

  Widget configCard() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: ListTile(
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _getIcon(index),
                                const SizedBox(height: 8),
                                Text(
                                  _getTitle(index),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            onTap: () {
                              _functionTap(index, context);
                            },
                          ),
                        ),
                        if (index != 5)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Divider(
                              thickness: 2.0,
                              color: Colors.grey[300],
                            ),
                          ),
                      ],
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
    return BasePage(
      body: Container(
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
            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    cabecalho(),
                    Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: configCard(),
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
