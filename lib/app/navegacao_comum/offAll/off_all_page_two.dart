import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/app/navegacao_comum/offAll/off_all_page_three.dart';
    
class OffAllPageTwo extends StatelessWidget {

  const OffAllPageTwo({ Key? key }) : super(key: key);
  
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
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) {
                    return const OffAllPageThree();
                  },
                  settings: const RouteSettings(name: 'Page Two')
                  ),
                  ModalRoute.withName('/offAllHomepage'),
                );
              },
              child: const Text('Go to page 3 com Flutter Nativo excluindo parte da árvore de navegação'),
            ),
            TextButton(
              onPressed: () {
                 Get.offAll(const OffAllPageThree(), predicate:   ModalRoute.withName('/offAllHomepage'),
                 );
              },
              child: const Text('Go to page 3 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}