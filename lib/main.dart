import 'package:flutter/material.dart';
import 'package:getx_intro/value_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key, required this.title});

  final String title;




  final textController = TextEditingController();
  final valueController = ValueController();


  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('Constriu');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // valor
            Text('Valor definido: ${valueController.definedValue}'),
            // campo
            TextField(controller: textController),

            // Botão
            ElevatedButton(
              onPressed: () {
                String value = textController.text;
                
            
                  valueController.definedValue = value;
          
              },
              child: Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}
