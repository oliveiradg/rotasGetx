import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {

  const PageOne({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
        
           appBar: AppBar(title: const Text('Pagina 1'),
           backgroundColor: Colors.green[400],),
           body: Container(
            color: Colors.green,
                child: const Center(

                    child: Text('Você Navegou corretamente!', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    ),
                    ),),
                ),
           
       );
  }
}