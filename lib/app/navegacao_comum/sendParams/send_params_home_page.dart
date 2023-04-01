import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paramNative =
        ModalRoute.of(context)?.settings.arguments ?? 'param não enviado';

    final paramGetx = Get.arguments ?? 'param não enviado';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviando Parâmetros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nativo: $paramNative',
            ),
            Text('Get: $paramGetx '),
          ],
        ),
      ),
    );
  }
}
