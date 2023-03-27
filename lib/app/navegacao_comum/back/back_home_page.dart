import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/app/navegacao_comum/back/back_page_one.dart';

class BackHomePage extends StatelessWidget {

  const BackHomePage({ Key? key }) : super(key: key);

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
                    return const BackPageOne();
                  },
                  ),
                );
              },
              child: const Text('Go to page com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const BackPageOne());
              },
              child: const Text('Go to page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
