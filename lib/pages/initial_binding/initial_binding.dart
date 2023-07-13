import 'package:get/get.dart';
import 'package:get_dependencias/pages/initial_binding/auth_model.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      AuthModel(
        name: 'Victor Alexandre',
        email: 'victor_apc@yahoo.com.br',
        curso: 'Jornada GetX',
      ),
      permanent: true,
    );
  }
}
