import 'package:flutter/material.dart';
import 'package:get_dependencias/core/widgets/elevated_button_custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButtonCustom(
              onPressed: () {
                Navigator.of(context).pushNamed('/basico');
              },
              text: 'Básico',
            ),
          ],
        ),
      ),
    );
  }
}
