import 'package:flutter/material.dart';

class Waiting extends StatefulWidget {
  final String? text;

  const Waiting({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  _WaitingState createState() => _WaitingState();
}

class _WaitingState extends State<Waiting> with TickerProviderStateMixin {
  //AnimationController controller;

  @override
  void initState() {
    /* controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true); */
    super.initState();
  }

  @override
  void dispose() {
    //controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.text != null) Text(widget.text!),
        const SizedBox(
          height: 32,
          width: 32,
          child: CircularProgressIndicator.adaptive(
              //value: controller.value,
              //semanticsLabel: 'Linear progress indicator',
              ),
        ),
      ],
    );
  }
}
