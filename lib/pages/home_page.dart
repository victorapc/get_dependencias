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
            ElevatedButtonCustom(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos');
              },
              text: 'Métodos',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                Navigator.of(context).pushNamed('/bindings');
              },
              text: 'Bindings',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                Navigator.of(context).pushNamed('/bindings_builder');
              },
              text: 'Bindings Builder',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                Navigator.of(context).pushNamed('/bindings_builder_put');
              },
              text: 'Bindings Builder Put',
            ),
          ],
        ),
      ),
    );
  }
}
