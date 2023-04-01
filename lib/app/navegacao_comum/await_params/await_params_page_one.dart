import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPageOne extends StatelessWidget {
  const AwaitParamsPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('retornando Parametro com nativo');
              },
              child: const Text('Retornando params com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.back(result: 'retornando parametro com GetX');
              },
              child: const Text('retornando params com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
