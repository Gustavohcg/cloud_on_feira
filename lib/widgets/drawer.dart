import 'dart:io';

import 'package:cloud_on_feira/pages/account/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  // XFile? i;
  ImageProvider? image;
  // final _storageService = serviceLocator<FlutterSecureStorage>();
  // final _dbService = serviceLocator<DbService>();
  String? accountId;
  String? name;
  bool _showOptions = false;
  // late ImagePicker picker;
  // XFile? imageFile;
  String? imagemBase64;
  final GlobalKey<FormBuilderState> loginnFBKey = GlobalKey<FormBuilderState>();

  @override
  initState() {
    super.initState();
    // getName();
    // picker = ImagePicker();
  }

  // stringParaXFile() async {
  //   accountId = await _storageService.read(key: 'idConta');
  //   String imageBase64 = await _dbService.getAccountImg(int.parse(accountId!));
  //   if (imageBase64 != '') {
  //     try {
  //       final decodedBytes = base64Decode(imageBase64);
  //       final tempDir = await getTemporaryDirectory();
  //       final tempPath = '${tempDir.path}/temp_image.jpg';

  //       await File(tempPath).writeAsBytes(decodedBytes);

  //       // i = XFile(tempPath);
  //       image = FileImage(File(i!.path));
  //       return image;
  //     } catch (e) {
  //       print('Erro ao converter a imagem base64 para XFile: $e');
  //       return null;
  //     }
  //   }
  //   return null;
  // }

  // getName() async {
  //   name = await _storageService.read(key: 'nome');
  //   return name;
  // }

  // setImageFile(XFile? value) {
  //   setState(() {
  //     imageFile = value;
  //   });
  // }

  // _updateAuthStatus(AuthState value) {
  //   context.read<AuthNotifier>().updateLoginStatus(value);
  //   /*  Consumer<AuthNotifier>(
  //     builder: (context, notifier, child) {
  //       notifier.updateLoginStatus(value);
  //       return Container();
  //     },
  //   ); */
  // }

  void showAlertDialog(BuildContext context, msg, bool teste) {
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
            msg,
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
                _hideMenu();
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
                if (teste == false) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPage(fbKey: loginnFBKey)));
                  // _updateAuthStatus(AuthState.loggedOut);
                  _hideMenu();
                } else {
                  setState(() {
                    // image = AssetImage("images/icone_imagem.png");
                    // imageFile = null;
                    // image = null;
                    image = FileImage(File("assets/icone_imagem.png"));
                  });
                  Navigator.of(context).pop();
                  showModal('Foto excluida com sucesso');
                  _hideMenu();
                }
              },
            ),
          ],
        );
      },
    );
  }

  void openMenu() {
    setState(() {
      _showOptions = true;
    });
  }

  void _hideMenu() {
    setState(() {
      _showOptions = false;
    });
  }

  showModal(String texto) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
      ),
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.check, color: Colors.green, size: 25),
                title: Text(
                  texto,
                  style: const TextStyle(fontSize: 20),
                ),
                onTap: () {
                  print('Send email');
                },
              ),
            ),
          ],
        );
      },
      enableDrag: false,
      isDismissible: true,
    );
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pop(context);
    });
  }

  Widget imageChoose() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          const Text(
            'Escolha foto para o perfil',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton.icon(
              icon: const Icon(
                Icons.camera,
              ),
              onPressed: () {
                // takePhoto(ImageSource.camera);
                _hideMenu();
                // showModal('Foto editada com sucesso!');
              },
              label: const Text('Câmera'),
            ),
            TextButton.icon(
              icon: const Icon(Icons.image),
              onPressed: () {
                // takePhoto(ImageSource.gallery);
                _hideMenu();
                // showModal('Foto editada com sucesso!');
              },
              label: const Text('Galeria'),
            ),
          ])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                GestureDetector(
                  onTap: _hideMenu,
                  child: DrawerHeader(
                    decoration: const BoxDecoration(color: Color(0xffBAC0CA)),
                    child: Column(
                      children: [
                        Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 35.0,
                                backgroundImage: AssetImage('assets/binho.jpg'),
                              ),
                              if (_showOptions)
                                Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: IntrinsicHeight(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              showAlertDialog(
                                                  context,
                                                  'Tem certeza que deseja remover sua foto?',
                                                  true);
                                            },
                                            child: const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.close_outlined,
                                                  size: 20,
                                                ),
                                                Text(
                                                  'Remover',
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const VerticalDivider(
                                            thickness: 0.8,
                                            color: Colors.grey,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              showModalBottomSheet(
                                                context: context,
                                                builder: ((builder) =>
                                                    imageChoose()),
                                                isDismissible: true,
                                              );
                                            },
                                            child: const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.edit_outlined,
                                                    size: 20),
                                                Text(
                                                  'Editar',
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Olá, Binho',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 13.5,
                              ),
                            ),
                            SizedBox(height: 4),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  child: Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/configApp.svg',
                          width: 20,
                        ),
                        title: const Text('Configurações'),
                        onTap: () {
                          GoRouter.of(context).goNamed("AppConfigPage",
                              params: {'path': 'config'});
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.pin_drop),
                        title: const Text('Locais'),
                        onTap: () {
                          GoRouter.of(context).goNamed("SitesManagementMore",
                              params: {'path': 'more'});
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.devices),
                        title: const Text('Dispositivos'),
                        onTap: () {
                          GoRouter.of(context).goNamed("DevicesManagementPage");
                        },
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/automacao.svg',
                          width: 20,
                        ),
                        title: const Text('Automação'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icone sobre.svg',
                          width: 20,
                        ),
                        title: const Text('Sobre'),
                        onTap: () {
                          GoRouter.of(context).goNamed('AboutPage');
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/sair.svg',
              width: 20,
            ),
            title: const Text('Sair'),
            onTap: () {
              showAlertDialog(context, 'Deseja mesmo sair?', false);
            },
          ),
        ],
      ),
    );
  }
}
