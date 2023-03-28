import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/app/navegacao_comum/off/off_page_one.dart';

class OffHomePage extends StatelessWidget {

  const OffHomePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Off Home Page'),),
           body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const OffPageOne();
                  },
                  ),
                );
              },
              child: const Text('Go to Off Page One com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffPageOne());
              },
              child: const Text('Go to Off Page One  com GetX'),
            ),
          ],
        ),
      ),
       );
  }
}