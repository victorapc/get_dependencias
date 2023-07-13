import 'package:get/get.dart';

class MiddlewareBinding extends GetMiddleware {
  // Executado logo antes da chamada da página.
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    return super.onPageBuildStart(page);
  }
}
