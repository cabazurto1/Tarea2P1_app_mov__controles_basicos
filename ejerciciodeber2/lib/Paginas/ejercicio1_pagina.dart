import 'package:flutter/material.dart';
import '../logica/ejercicio1_logica.dart';

class Ejercicio1Page extends StatelessWidget {
  const Ejercicio1Page({super.key});

  @override
  Widget build(BuildContext context) {
    final asciiTable = tablaASCII();

    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 1: Tabla ASCII')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tabla de Caracteres ASCII',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: asciiTable.length,
                itemBuilder: (context, index) {
                  final line = asciiTable[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: index % 2 == 0 ? Colors.grey[200] : Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Text(
                      line,
                      style: const TextStyle(fontSize: 16, fontFamily: 'Monospace'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
