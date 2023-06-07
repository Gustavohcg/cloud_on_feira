import 'dart:async';

import 'package:cloud_on_feira/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class LoginAnimation extends StatefulWidget {
  const LoginAnimation({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginAnimation> createState() => _LoginAnimationState();
}

class _LoginAnimationState extends State<LoginAnimation> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DashboardPage(),
          ));
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topCenter,
                child:
                    SvgPicture.asset('assets/logoppaoncloud.svg', height: 200),
              ),
            ),
            const Text(
              'Aguarde... Efetuando login',
              style: TextStyle(fontSize: 20),
            ),
            Lottie.asset('assets/waitinglogin.json', height: 300),
          ],
        ),
      ),
    );
  }
}
