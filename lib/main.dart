import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
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
    debugPrint('Criou arvore');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, children: [
            // valor
            GetBuilder<ValueController>(
              init: valueController, //atenção

              builder: (ctrl) {
                debugPrint('Criou Getx');
                return Text(
                  'Valor definido: ${ctrl.definedvalue}',
                );
              },
            ),
            // campo
            TextField(controller: textController),

            // Botão
            GetBuilder(
              init: valueController,
              builder: (ctrl) {
                return ElevatedButton(
                  onPressed: () {
                    String value = textController.text;

                    valueController.setValue(value);
                  },
                  child: Text('Confirmar'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
