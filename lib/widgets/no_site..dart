import 'package:flutter/material.dart';

class NoSite extends StatelessWidget {
  const NoSite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(8, 20, 8, 12),
      child: Center(
        child: Column(
          children: [
            Icon(Icons.room, size: 100),
            SizedBox(
              height: 20,
            ),
            Text(
              'Nenhum local selecionado',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
