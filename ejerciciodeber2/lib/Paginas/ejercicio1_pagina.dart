import 'package:flutter/material.dart';
import '../logica/ejercicio1_logica.dart';

class Ejercicio1Page extends StatelessWidget {
  const Ejercicio1Page({super.key});

  @override
  Widget build(BuildContext context) {
    final asciiTable = tablaASCII();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Ejercicio 1: Tabla ASCII',
          style: TextStyle(
            color: Colors.white,
          ),

        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tabla de Caracteres ASCII',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const Divider(thickness: 2, color: Colors.deepPurple),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: asciiTable.length,
                itemBuilder: (context, index) {
                  final line = asciiTable[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    decoration: BoxDecoration(
                      color: index % 2 == 0 ? Colors.deepPurple[50] : Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      line,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Courier',
                        color: Colors.deepPurple,
                      ),
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
