import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/core/widgets/elevated_button_custom.dart';
import 'package:get_dependencias/pages/metodos/create/create_controller.dart';

class CreateHomePage extends StatefulWidget {
  CreateHomePage({super.key}) {
    // Create é responsável pra criar sempre uma nova instancia quando usar Get.find
    Get.create(() => CreateController());
    // Mantém a instância quando usa o Get.find
    Get.put(CreateController(), tag: 'put');
  }

  @override
  State<CreateHomePage> createState() => _CreateHomePageState();
}

class _CreateHomePageState extends State<CreateHomePage> {
  String data = '';
  String dataPut = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Data: $data'),
            Text('Data Put: $dataPut'),
            ElevatedButtonCustom(
                text: 'Buscar Data',
                onPressed: () {
                  setState(() {
                    data = Get.find<CreateController>().data;
                    dataPut = Get.find<CreateController>(tag: 'put').data;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
