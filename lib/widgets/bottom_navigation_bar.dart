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
  void _onItemTapped(int index, BuildContext context) {
    //context.read<NavigationBarNotifier>().selectedIndex = index;
    switch (index) {
      case 0: // Alarm
        Navigator.pushReplacementNamed(context, 'security');
        break;
      case 1: // Scenes
        Navigator.pushReplacementNamed(context, 'scenes');
        break;
      case 2: // Dashboard
        Navigator.pushReplacementNamed(context, '/dashboard');
        break;
      case 3: // Rooms
        Navigator.pushReplacementNamed(context, 'rooms');
        break;
      case 4: //More
        Navigator.pushReplacementNamed(context, 'more');
        break;
    }
  }

  static int _calculateSelectedIndex(BuildContext context) {
    Route currentRoute = ModalRoute.of(context) as Route;

    String currentPageName = currentRoute.settings.name!;

    if (currentPageName.contains("security")) {
      return 0;
    }
    if (currentPageName.contains("scenes")) {
      return 1;
    }
    if (currentPageName.contains("/dashboard")) {
      return 2;
    }
    if (currentPageName.contains("rooms")) {
      return 3;
    }
    if (currentPageName.contains("more")) {
      return 4;
    }
    return 2;
  }

  @override
  Widget build(BuildContext context) {
    var theme = BottomNavigationBarTheme.of(context);
    return BottomNavigationBar(
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
      currentIndex: _calculateSelectedIndex(context),
      onTap: (selectedIndex) => _onItemTapped(selectedIndex, context),
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );
  }
}
