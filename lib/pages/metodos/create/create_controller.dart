import 'package:flutter/material.dart';

class CreateController {
  final data = DateTime.now().toIso8601String();

  CreateController() {
    debugPrint('Criando instancia de CreateController.');
  }
}
