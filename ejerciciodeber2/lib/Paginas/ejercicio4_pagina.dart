import 'package:flutter/material.dart';
import '../logica/ejercicio4_logica.dart';

class Ejercicio4Page extends StatefulWidget {
  const Ejercicio4Page({super.key});

  @override
  State<Ejercicio4Page> createState() => _Ejercicio4PageState();
}

class _Ejercicio4PageState extends State<Ejercicio4Page> {
  final _controller = TextEditingController();
  String _resultado = '';

  void _calcularFactorizacion() {
    final input = _controller.text;
    if (input.isEmpty || int.tryParse(input) == null || int.parse(input) <= 1) {
      setState(() {
        _resultado = 'Ingrese un número entero mayor a 1.';
      });
      return;
    }

    final numero = int.parse(input);
    final factores = factorizar(numero);
    setState(() {
      _resultado = factores.entries
          .map((e) => '${e.key}^${e.value}')
          .join(' × ');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 4: Factorización')),
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
              onPressed: _calcularFactorizacion,
              child: const Text('Calcular Factores'),
            ),
            const SizedBox(height: 20),
            Text(
              _resultado.isEmpty ? '' : 'Factores: $_resultado',
              style: const TextStyle(fontSize: 18, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
