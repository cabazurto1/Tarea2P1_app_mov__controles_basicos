import 'package:flutter/material.dart';
import '../logica/ejercicio3_logica.dart';

class Ejercicio3Page extends StatefulWidget {
  const Ejercicio3Page({super.key});

  @override
  State<Ejercicio3Page> createState() => _Ejercicio3PageState();
}

class _Ejercicio3PageState extends State<Ejercicio3Page> {
  final _controllerA = TextEditingController();
  final _controllerB = TextEditingController();
  String _resultado = '';

  void _calcularMCD() {
    final inputA = _controllerA.text;
    final inputB = _controllerB.text;
    if (inputA.isEmpty || inputB.isEmpty ||
        int.tryParse(inputA) == null || int.tryParse(inputB) == null ||
        int.parse(inputA) <= 0 || int.parse(inputB) <= 0) {
      setState(() {
        _resultado = 'Ingrese dos números enteros positivos.';
      });
      return;
    }

    final numeroA = int.parse(inputA);
    final numeroB = int.parse(inputB);
    final mcdResult = mcd(numeroA, numeroB);
    setState(() {
      _resultado = 'El MCD de $numeroA y $numeroB es $mcdResult';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 3: MCD')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controllerA,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingrese el primer número',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _controllerB,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingrese el segundo número',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _calcularMCD,
              child: const Text('Calcular MCD'),
            ),
            const SizedBox(height: 20),
            Text(
              _resultado,
              style: const TextStyle(fontSize: 18, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
