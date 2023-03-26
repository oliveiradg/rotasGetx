import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/app/navegacao_comum/navegacao_comum_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Rotas com Getx',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const NavegacaoComumHomePage(),
    
    );
  }
}
