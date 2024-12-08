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
    if (inputA.isEmpty ||
        inputB.isEmpty ||
        int.tryParse(inputA) == null ||
        int.tryParse(inputB) == null ||
        int.parse(inputA) <= 0 ||
        int.parse(inputB) <= 0) {
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
      appBar: AppBar(
        title: const Text(
            'Ejercicio 3: MCD',
        style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Calculadora del Máximo Común Divisor (MCD)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
              textAlign: TextAlign.center,
            ),
            const Divider(thickness: 2, color: Colors.orange),
            const SizedBox(height: 20),
            TextField(
              controller: _controllerA,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingrese el primer número',
                labelStyle: const TextStyle(color: Colors.orange),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _controllerB,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingrese el segundo número',
                labelStyle: const TextStyle(color: Colors.orange),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcularMCD,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              ),
              child: const Text(
                'Calcular MCD',
                style: TextStyle(
                    fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.orange[300]!),
              ),
              child: Text(
                _resultado,
                style: const TextStyle(fontSize: 18, color: Colors.orange),
                textAlign: TextAlign.center,
              ),
              width: 500,
            ),
          ],
        ),
      ),
    );
  }
}
