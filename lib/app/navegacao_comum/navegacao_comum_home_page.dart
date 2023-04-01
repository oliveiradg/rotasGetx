import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/app/navegacao_comum/await_params/await_params_home_page.dart';
import 'package:rotas_getx/app/navegacao_comum/back/back_home_page.dart';
import 'package:rotas_getx/app/navegacao_comum/off/off_home_page.dart';
import 'package:rotas_getx/app/navegacao_comum/offAll/off_all_home_page.dart';
import 'package:rotas_getx/app/navegacao_comum/sendParams/send_params_home_page.dart';
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
              Get.to(const OffHomePage());
            },
            child: const Text('Back (Pop)'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const OffHomePage());
            },
            child: const Text('off (Replacement)'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const OffAllHomePage());
            },
            child: const Text('offAll (PopAndRemoveUntil)'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const SendParamsHomePage());
            },
            child: const Text('Enviando Parâmetros'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const AwaitParamsHomePage());
            },
            child: const Text('Aguardando Parâmetros'),
          ),
        ],
      )),
    );
  }
}
