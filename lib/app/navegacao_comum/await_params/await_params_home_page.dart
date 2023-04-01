import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/app/navegacao_comum/await_params/await_params_page_one.dart';
    
class AwaitParamsHomePage extends StatelessWidget {

  const AwaitParamsHomePage({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const AwaitParamsPageOne();
                    },
                  ),
                );
                debugPrint(result);
              },
              child: const Text('Go to pageOne Nativo'),
            ),
            TextButton(
              onPressed: () async {
              final result =  await Get.to(
                  const AwaitParamsPageOne(),
                
                );
                debugPrint(result);
              },
              child: const Text('Go to pageOne com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}