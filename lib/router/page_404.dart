import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              '404!',
              style: TextStyle(fontSize: 48, color: Colors.black12),
            ),
            Text(
              'Oops page not found',
              style: TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }
}
