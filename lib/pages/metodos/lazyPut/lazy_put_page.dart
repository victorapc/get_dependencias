import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/core/widgets/elevated_button_custom.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_controller.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_fenix_controller.dart';

class LazyPutPage extends StatefulWidget {
  LazyPutPage({super.key}) {
    Get.lazyPut(() => LazyPutController());
    // Mata a instância, porém o GetX mantém a factory dentro do Get fazendo com que
    // tenha a possibilidade de acessa-la de qualquer lugar da aplicação dentro do Get.
    Get.lazyPut(() => LazyPutFenixController(), fenix: true);
    // Matem a instancia dentro do Get, sendo assim quando você pedir a classe
    // ele retorna-a a mesma instancia anterior!!!
    //Get.put(() => LazyPutFenixController(), permanent: true);
  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {
  String nome = '';
  String nomeFenix = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazy Put Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome $nome'),
            Text('Nome Fenix $nomeFenix'),
            ElevatedButtonCustom(
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                setState(() {
                  nome = controller.nome;
                });
              },
              text: 'Buscar Nome',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                controller.nome = 'Jornada Flutter';
              },
              text: 'Alterar Nome',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();
                setState(() {
                  nomeFenix = controller.nome;
                });
              },
              text: 'Buscar Nome Fenix',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();
                controller.nome = 'Jornada Flutter Fenix';
              },
              text: 'Alterar Nome Fenix',
            ),
          ],
        ),
      ),
    );
  }
}
