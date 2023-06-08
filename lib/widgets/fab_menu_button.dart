import 'package:flutter/material.dart';

import 'fab_delegate.dart';

class FabMenuButton extends StatefulWidget {
  const FabMenuButton({Key? key}) : super(key: key);

  @override
  State<FabMenuButton> createState() => _FabMenuButtonState();
}

class _FabMenuButtonState extends State<FabMenuButton>
    with SingleTickerProviderStateMixin {
  late AnimationController animation;
  final menuIsOpen = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  toggleMenu() {
    menuIsOpen.value ? animation.reverse() : animation.forward();
    menuIsOpen.value = !menuIsOpen.value;
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      clipBehavior: Clip.none,
      delegate: FabVerticalDelegate(animation: animation),
      children: [
        FloatingActionButton(
          backgroundColor: const Color(0xffFF6600),
          heroTag: "btn1",
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: animation,
          ),
          onPressed: () => toggleMenu(),
        ),
        Container(
          child: Column(
            children: [
              FloatingActionButton(
                heroTag: "btn2",
                backgroundColor: const Color.fromARGB(255, 255, 148, 76),
                onPressed: () {},
                child: const Icon(Icons.dashboard_outlined),
              ),
            ],
          ),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 148, 76),
          heroTag: "btn3",
          onPressed: () {},
          child: const Icon(Icons.auto_fix_high_outlined),
        ),
      ],
    );
  }
}
