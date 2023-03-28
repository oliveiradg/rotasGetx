import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/app/navegacao_comum/off/off_page_three.dart';
    
class OffPageTwo extends StatelessWidget {

  const OffPageTwo({ Key? key }) : super(key: key);
  
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
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return const OffPageThree();
                  },
                  ),
                );
              },
              child: const Text('Go to page 3 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.off(const OffPageThree());
              },
              child: const Text('Go to page 3 com GetX'),
            ),

            //O comando Get.off remove a pagina da pilha e volta direto para a primeira página

           





          ],
        ),
      ),
    );
  }
}