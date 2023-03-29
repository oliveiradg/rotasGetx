import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/app/navegacao_comum/offAll/off_all_page_two.dart';
    
class OffAllPageOne extends StatelessWidget {

  const OffAllPageOne({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OffAll Page One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const OffAllPageTwo();
                  },
                  settings: const RouteSettings(name: 'Page Two')
                  ),
                );
              },
              child: const Text('Go to page 2 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffAllPageTwo());
              },
              child: const Text('Go to page 2 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}