import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/app/navegacao_comum/offAll/off_all_page_one.dart';

class OffAllHomePage extends StatelessWidget {

  const OffAllHomePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Off All Home Page'),),
           body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const OffAllPageOne();
                  },
                  settings: const RouteSettings(name: 'Page One')
                  ),
                );
              },
              child: const Text('Go to page One com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffAllPageOne());
              },
              child: const Text('Go to page One com GetX'),
            ),
          ],
        ),
      ),
       );
  }
}