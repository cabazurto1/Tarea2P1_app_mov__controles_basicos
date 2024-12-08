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
      appBar: AppBar(
        title: const Text(
          'Ejercicio 2: Factorial',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Calculadora de Factorial',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              child: Icon(
                  Icons.calculate_sharp,
                  size:50.0,
                  color: Colors.green
              ),
            ),
            const Divider(thickness: 2, color: Colors.green),
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingrese un número entero',
                labelStyle: const TextStyle(color: Colors.green),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcularFactorial,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              ),
              child: const Text(
                'Calcular Factorial',
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
                color: Colors.green[50],
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.green[300]!),
              ),
              child: Text(
                _resultado,
                style: const TextStyle(fontSize: 18, color: Colors.green),
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
