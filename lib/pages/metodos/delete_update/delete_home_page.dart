import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/core/widgets/elevated_button_custom.dart';
import 'package:get_dependencias/pages/metodos/delete_update/delete_controller.dart';

class DeleteHomePage extends StatefulWidget {
  const DeleteHomePage({super.key});

  @override
  State<DeleteHomePage> createState() => _DeleteHomePageState();
}

class _DeleteHomePageState extends State<DeleteHomePage> {
  String nome = '';

  @override
  void dispose() {
    Get.delete<DeleteController>(force: true);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nome),
            ElevatedButtonCustom(
              text: 'Buscar Nome',
              onPressed: () {
                setState(() {
                  nome = Get.find<DeleteController>().nome;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
