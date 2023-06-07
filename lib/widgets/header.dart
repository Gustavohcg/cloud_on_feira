import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(
      {super.key,
      required this.image,
      this.title,
      required this.organograma,
      this.organogramaImage});

  final String image;
  final bool organograma;
  final String? title;
  final String? organogramaImage;

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      Image.asset(
        image,
        fit: BoxFit.cover,
      ),
      Center(
        child: organograma
            ? Image.asset(organogramaImage!)
            : Text((title!),
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24)),
      )
    ]);
  }
}
