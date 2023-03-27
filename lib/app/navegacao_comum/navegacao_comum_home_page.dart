import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/app/navegacao_comum/back/back_home_page.dart';
import 'package:rotas_getx/app/navegacao_comum/to/to_home_page.dart';

class NavegacaoComumHomePage extends StatelessWidget {
  const NavegacaoComumHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Navegação Comum'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(const ToHomePage());
            },
            child: const Text('TO (Push)'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const ToHomePage());
            },
            child: const Text('TO (Push)'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const ());
            },
            child: const Text('Back (Pop)'),
          ),
        ],
      )),
    );
  }
}
