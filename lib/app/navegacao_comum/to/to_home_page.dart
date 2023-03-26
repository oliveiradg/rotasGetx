import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/app/navegacao_comum/to/page_one.dart';

class ToHomePage extends StatelessWidget {
  const ToHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const PageOne();
                  },
                  ),
                );
              },
              child: const Text('Go to page com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const PageOne());
              },
              child: const Text('Go to page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
