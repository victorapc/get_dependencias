import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';
import 'package:get_dependencias/pages/bindings/bindings_example.dart';
import 'package:get_dependencias/pages/bindings/home_bindings_page.dart';
import 'package:get_dependencias/pages/bindings/middleware_binding.dart';
import 'package:get_dependencias/pages/home_page.dart';
import 'package:get_dependencias/pages/initial_binding/initial_binding.dart';
import 'package:get_dependencias/pages/initial_binding/initial_binding_page.dart';
import 'package:get_dependencias/pages/metodos/create/create_home_page.dart';
import 'package:get_dependencias/pages/metodos/delete_update/update_home_page.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_page.dart';
import 'package:get_dependencias/pages/metodos/metodos_home_page.dart';
import 'package:get_dependencias/pages/metodos/put/put_page.dart';
import 'package:get_dependencias/pages/metodos/putAsync/put_async_page.dart';

import 'pages/basico/basico_home_page.dart';
import 'pages/metodos/delete_update/delete_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      title: 'Get Dependencia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/basico',
          page: () => BasicoHomePage(),
        ),
        GetPage(
          name: '/metodos',
          page: () => const MetodosHomePage(),
          children: [
            GetPage(
              name: '/put',
              page: () => const PutPage(),
            ),
            GetPage(
              name: '/lazyPut',
              page: () => LazyPutPage(),
            ),
            GetPage(
              name: '/putAsync',
              page: () => PutAsyncPage(),
            ),
            GetPage(
              name: '/create',
              page: () => CreateHomePage(),
            ),
            GetPage(
              name: '/update',
              page: () => UpdateHomePage(),
            ),
            GetPage(
              name: '/delete',
              page: () => const DeleteHomePage(),
            ),
          ],
        ),
        GetPage(
          name: '/bindings',
          binding: BindingsExample(),
          middlewares: [
            MiddlewareBinding(),
          ],
          page: () => const HomeBindingsPage(),
        ),
        GetPage(
          name: '/bindings_builder',
          binding: BindingsBuilder(() {
            Get.put(
                BindingsController(nome: 'Inicializado dentro do binding.'));
          }),
          page: () => const HomeBindingsPage(),
        ),
        GetPage(
          name: '/bindings_builder_put',
          binding: BindingsBuilder.put(
            () => BindingsController(nome: 'Inicializado dentro do binding.'),
          ),
          page: () => const HomeBindingsPage(),
        ),
        GetPage(
          name: '/initial_binding',
          page: () => const InitialBindingPage(),
        ),
      ],
    );
  }
}
