import 'package:flutter/material.dart';
    
class OffPageOne extends StatelessWidget {

  const OffPageOne({ Key? key }) : super(key: key);
  
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
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) {
                //     return const BackPageOne();
                //   },
                //   ),
                // );
              },
              child: const Text('Go to page 2 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                // Get.to(const BackPageOne());
              },
              child: const Text('Go to page 2 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}