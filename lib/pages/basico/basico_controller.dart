import 'package:flutter/material.dart';

class BasicoController extends ChangeNotifier {
  var nome = 'Sem nome';

  void alterarNome(String nomeAlterar) {
    nome = nomeAlterar;
    notifyListeners();
  }
}
