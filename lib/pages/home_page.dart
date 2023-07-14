import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/core/widgets/elevated_button_custom.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';
import 'package:get_dependencias/pages/bindings/home_bindings_page.dart';

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
            ElevatedButtonCustom(
              onPressed: () {
                Get.to(const HomeBindingsPage(),
                    binding: BindingsBuilder.put(() => BindingsController(
                        nome: 'Inicializado pelo binding sem rota nomeada.')));
              },
              text: 'Bindings sem Rotas Nomeadas',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                Get.toNamed('/initial_binding');
              },
              text: 'Initial Bindings',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                Get.toNamed('/services');
              },
              text: 'GetXService',
            ),
          ],
        ),
      ),
    );
  }
}
