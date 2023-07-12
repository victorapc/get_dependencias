import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/core/widgets/elevated_button_custom.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PutAsyncPage extends StatefulWidget {
  PutAsyncPage({super.key}) {
    Get.putAsync(() async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('nome', 'Put Async Exemplo');

      return prefs;
    }, permanent: true);
  }

  @override
  State<PutAsyncPage> createState() => _PutAsyncPageState();
}

class _PutAsyncPageState extends State<PutAsyncPage> {
  String nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Put Async Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome $nome'),
            ElevatedButtonCustom(
              text: 'Buscar Nome',
              onPressed: () {
                setState(() {
                  nome = Get.find<SharedPreferences>().getString('nome') ??
                      'Nome não encontrado.';
                });
              },
            ),
            ElevatedButtonCustom(
              text: 'Alterar Nome',
              onPressed: () {
                Get.find<SharedPreferences>()
                    .setString('nome', 'Nome alterado');
              },
            ),
          ],
        ),
      ),
    );
  }
}
