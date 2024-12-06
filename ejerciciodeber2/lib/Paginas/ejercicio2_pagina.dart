import 'package:flutter/material.dart';
import '../logica/ejercicio2_logica.dart';

class Ejercicio2Page extends StatefulWidget {
  const Ejercicio2Page({super.key});

  @override
  State<Ejercicio2Page> createState() => _Ejercicio2PageState();
}

class _Ejercicio2PageState extends State<Ejercicio2Page> {
  final _controller = TextEditingController();
  String _resultado = '';

  void _calcularFactorial() {
    final input = _controller.text;
    if (input.isEmpty || int.tryParse(input) == null || int.parse(input) < 0) {
      setState(() {
        _resultado = 'Por favor ingrese un número entero no negativo.';
      });
      return;
    }

    final numero = int.parse(input);
    final factorialResult = factorial(numero);
    setState(() {
      _resultado = 'El factorial de $numero es $factorialResult';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 2: Factorial')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingrese un número entero',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _calcularFactorial,
              child: const Text('Calcular Factorial'),
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
