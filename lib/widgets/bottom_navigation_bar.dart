import 'package:cloud_on_feira/pages/home/home.dart';
import 'package:cloud_on_feira/pages/more/more.dart';
import 'package:cloud_on_feira/pages/rooms/rooms.dart';
import 'package:cloud_on_feira/pages/scenes/scenes.dart';
import 'package:flutter/material.dart';

//import '/pages/initial_page.dart';
//import '/provider/navigation_bar_provider.dart';

class SpiritBottomNavigationBar extends StatefulWidget {
  const SpiritBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _SpiritBottomNavigationBarState createState() =>
      _SpiritBottomNavigationBarState();
}

class _SpiritBottomNavigationBarState extends State<SpiritBottomNavigationBar> {
  int _selectedIndex = 2;

  void _onItemTapped2(int index, BuildContext context) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index, BuildContext context) {
    //context.read<NavigationBarNotifier>().selectedIndex = index;
    switch (index) {
      case 0: // Alarm
        // GoRouter.of(context).goNamed("SecurityPage");
        break;
      case 1: // Scenes
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>  ScenesPage()));
        break;
      case 2: // Dashboard
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const DashboardPage()));
        break;
      case 3: // Rooms
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const RoomsPage()));
        break;
      case 4: //More
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const MorePage()));
        break;
    }
  }

  // static int _calculateSelectedIndex(BuildContext context) {
  //   // final String location = GoRouterState.of(context).location;
  //   final currentRoute = ModalRoute.of(context)?.settings.name;

  //   if (currentRoute == '/') {
  //     return 0;
  //   }
  //   if (currentRoute == '/scenes') {
  //     return 1;
  //   }
  //   if (currentRoute == '/dashboard') {
  //     return 2;
  //   }
  //   if (currentRoute == '/rooms') {
  //     return 3;
  //   }
  //   // if (location.startsWith(MorePage.routeName)) {
  //   //   return 4;
  //   // }
  //   return 2;
  // }

  @override
  Widget build(BuildContext context) {
    var theme = BottomNavigationBarTheme.of(context);
    return BottomNavigationBar(
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(Icons.security_outlined),
          label: 'Segurança',
          backgroundColor: theme.backgroundColor,
          /* backgroundColor: /* Colors.transparent */ theme.scaffoldBackgroundColor, */
        ),
        BottomNavigationBarItem(
            icon: const Icon(Icons.meeting_room_outlined),
            label: 'Cenas',
            backgroundColor: theme.backgroundColor
            /* backgroundColor: /* Colors.transparent */ theme.scaffoldBackgroundColor, */
            ),
        BottomNavigationBarItem(
            icon: const Icon(Icons.movie_outlined),
            label: 'Dashboard',
            backgroundColor: theme.backgroundColor
            /* backgroundColor: /* Colors.transparent */ theme.scaffoldBackgroundColor, */
            ),
        BottomNavigationBarItem(
            icon: const Icon(Icons.dashboard_outlined),
            label: 'Ambientes',
            backgroundColor: theme.backgroundColor
            /* backgroundColor: /* Colors.transparent */ theme.scaffoldBackgroundColor, */
            ),
        BottomNavigationBarItem(
            icon: const Icon(Icons.menu),
            label: 'Mais',
            backgroundColor: theme.backgroundColor
            /* backgroundColor: /* Colors.transparent */ theme.scaffoldBackgroundColor, */
            ),
      ],
      currentIndex: _selectedIndex,
      onTap: (selectedIndex) => _onItemTapped(selectedIndex, context),

      /* showSelectedLabels: false,
      showUnselectedLabels: false,
      /* backgroundColor: /* Colors.transparent */ theme.scaffoldBackgroundColor, */
      elevation: 0, */
    );
  }
}
