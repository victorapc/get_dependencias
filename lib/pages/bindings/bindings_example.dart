import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';

class BindingsExample extends Bindings {
  BindingsExample() {
    debugPrint('Inicializando BindingsExample');
  }

  @override
  void dependencies() {
    debugPrint('Carregando as instâncias do bindings.');
    Get.put(BindingsController(nome: 'Inicializado dentro do binding.'));
  }
}
