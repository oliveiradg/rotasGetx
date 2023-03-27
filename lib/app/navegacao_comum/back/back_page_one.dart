import 'package:flutter/material.dart';
import 'package:get/get.dart';
    
class BackPageOne extends StatelessWidget {

  const BackPageOne({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Voltar com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Voltar com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}