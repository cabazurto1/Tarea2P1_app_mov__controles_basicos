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
      appBar: AppBar(
        title: const Text(
            'Ejercicio 4: Factorización',
          style: TextStyle(
              color:Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Calculadora de Factorización',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              textAlign: TextAlign.center,
            ),
            const Divider(thickness: 2, color: Colors.pink),
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingrese un número entero',
                labelStyle: const TextStyle(color: Colors.pink),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcularFactorizacion,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              ),
              child: const Text(
                'Calcular Factores',
                style: TextStyle(
                    fontSize: 16,
                color:Colors.white
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.pink[300]!),
              ),
              child: Text(
                _resultado.isEmpty ? '' : 'Factores: $_resultado',
                style: const TextStyle(fontSize: 18, color: Colors.pink),
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
