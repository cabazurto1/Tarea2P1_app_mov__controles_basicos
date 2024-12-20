import 'package:flutter/material.dart';
import '../logica/ejercicio5_logica.dart';

class Ejercicio5Page extends StatelessWidget {
  const Ejercicio5Page({super.key});

  @override
  Widget build(BuildContext context) {
    final primos = numerosPrimos(3, 32767);

    return Scaffold(
      appBar: AppBar(title: const Text(
          'Ejercicio 5: Números Primos',
        style: TextStyle(
          color: Colors.white
        ),
        ),
          backgroundColor: Colors.blue[500],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Lista de Números Primos entre 3 y 32767',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              child: Icon(
                  Icons.numbers,
                  size:50.0,
                  color: Colors.blue[500]
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Número fijo de columnas
                  crossAxisSpacing: 8.0, // Espaciado entre columnas
                  mainAxisSpacing: 8.0, // Espaciado entre filas
                  childAspectRatio: 2, // Relación de aspecto de cada celda
                ),
                itemCount: primos.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Text(
                      primos[index].toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Monospace',
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
