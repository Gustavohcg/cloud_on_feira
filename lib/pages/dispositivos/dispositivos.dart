import 'package:cloud_on_feira/pages/listar_dispositivos/listar_dispositivos.dart';
import 'package:cloud_on_feira/widgets/card.dart';
import 'package:cloud_on_feira/widgets/no_site..dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/widgets/header.dart';
import '/widgets/waiting.dart';

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

class _DispositivosPageState<T>
    extends State /* <DevicesManagementWidget<T>> */ {
  _DispositivosPageState();

  //final GlobalKey<FormBuilderState> _deviceCardFBKey = GlobalKey<FormBuilderState>();
  //final _themesService = /*servicelocator*/Get.find<ThemesService>();
  //final _dialogService = serviceLocator<DialogService>();
  //final List<int> _openSpirits = [];
  //List<IDevicePropertiesViewWidget> devices = <IDevicePropertiesViewWidget>[];
  //late AttatchDevice deviceToAttatch;

  @override
  final ScrollController scrollController = ScrollController();
  @override
  // late List<Spirit> spirits = <Spirit>[];
  // late int siteId;

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

  @override
  Future<Widget> spiritsList() async {
    //List<IDevicePropertiesViewWidget> items;

    return ListView.builder(
      shrinkWrap: true,
      controller: scrollController,
      itemCount: 2,
      itemBuilder: (context, index) {
        return const Column(
          children: [
            SizedBox(height: 16.0),
            // Card with each spirit information
            // CardSpiritAtDevicesManagement(
            //   spirit: spirits.elementAt(index),
            //   onClick: () => {},
            // )
          ],
        );
      },
    );
  }

  @override
  Widget spiritsListWidget() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: FutureBuilder(
        future: spiritsList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Waiting();
          } else {
            return snapshot.data;
          }
        },
      ),
    );
  }

  /* bool _handleClickedSpirit(int clickedSpirit) {
    // Scroll to spirit position

    // Add or remove the item of the list of open spirits
    _openSpirits.contains(clickedSpirit) ? _openSpirits.remove(clickedSpirit) : _openSpirits.add(clickedSpirit);

    debugPrint('Open Spirits >>> ${_openSpirits.length}');

    final double openSpiritsOffset = CardSpiritAtDevicesManagement.nominalOpenHeight * _getOpenSpiritsBefore(clickedSpirit);

    final double closedSpiritsOffset = CardSpiritAtDevicesManagement.nominalClosedHeight * (clickedSpirit - _getOpenSpiritsBefore(clickedSpirit));

    debugPrint('OpenSpirits $openSpiritsOffset ClosedSpirits $closedSpiritsOffset');

    final double offset = openSpiritsOffset + closedSpiritsOffset - (CardSpiritAtDevicesManagement.nominalClosedHeight * .5);

    // Scroll to the clicked element
    _scrollController.animateTo(
      max(0, offset),
      duration: const Duration(seconds: 1),
      curve: const Interval(.25, 1, curve: Curves.easeOutQuad),
    );

    debugPrint('Offset $offset');

    // Return true to stop the notification propagation
    return true;
  }
 */

  /* // Important for scrollng when multiple spirits are opened...
  int _getOpenSpiritsBefore(int spiritIndex) {
    // Search all indexes that are smaller to the current index in the list of indexes of open spirits
    return _openSpirits.where((int index) => index < spiritIndex).length;
  }
 */

  /* Future<void> _showDialog(DialogRequest dr) async {
    var dialogResult = await _dialogService.showDialog(dr: dr);
    return null;
  }
 */

  @override
  Widget addSpiritButton() {
    return ButtonBar(
      mainAxisSize: MainAxisSize.max,
      alignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          child: Text('adicionar spirit'.toUpperCase(),
              style: const TextStyle(fontSize: 17)),
          onPressed: () async {
            GoRouter.of(context).goNamed('SpiritRegisterWizardPage');
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.location_on)],
      ),
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
                    // spiritsListWidget(),
                    const SizedBox(
                      height: 16,
                    ),
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
                          title: const Row(
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ListarDispositivos()));
                                },
                              ),
                              const Icon(Icons.add)
                              // _addDeviceIcon(),
                            ],
                          ),
                          children: const <Widget>[
                            /* // to give a space to bottom of Spirit's badge
          SizedBox(
            height: 10,
          ), */
                            ListTile(
                              title: Text('oi'),
                            ),
                            // _buildSeparationLine(context),
                            // Column(
                            //   children: _buildDevicesCards(),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    addSpiritButton(),
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
