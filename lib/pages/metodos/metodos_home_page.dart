import 'package:flutter/material.dart';
import 'package:get_dependencias/core/widgets/elevated_button_custom.dart';

class MetodosHomePage extends StatelessWidget {
  const MetodosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Métodos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButtonCustom(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/put');
              },
              text: 'Put',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/lazyPut');
              },
              text: 'Lazy Put',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/putAsync');
              },
              text: 'Lazy Async',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/create');
              },
              text: 'Create',
            ),
          ],
        ),
      ),
    );
  }
}
