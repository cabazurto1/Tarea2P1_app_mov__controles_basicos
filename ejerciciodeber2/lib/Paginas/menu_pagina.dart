import 'package:flutter/material.dart';
import 'ejercicio1_pagina.dart';
import 'ejercicio2_pagina.dart';
import 'ejercicio3_pagina.dart';
import 'ejercicio4_pagina.dart';
import 'ejercicio5_pagina.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menú de Ejercicios',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF031634),
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: Container(
          color: const Color(0xFF033649),
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(top: 50, bottom: 20),
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/3/3a/Logo_ESPEOk.png",
                ),
              ),
              const Text(
                "Menú de ejercicios",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const Divider(color: Colors.white),
              Expanded(
                child: ListView(
                  children: [
                    _drawerItem(context, "Ejercicio 1: Tabla ASCII", const Ejercicio1Page()),
                    _drawerItem(context, "Ejercicio 2: Factorial", const Ejercicio2Page()),
                    _drawerItem(context, "Ejercicio 3: MCD", const Ejercicio3Page()),
                    _drawerItem(context, "Ejercicio 4: Factorización", const Ejercicio4Page()),
                    _drawerItem(context, "Ejercicio 5: Números Primos", const Ejercicio5Page()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "Menú de Ejercicios",
              style: GoogleFonts.robotoCondensed(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF37474F),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _menuItem(context, 'Ejercicio 1: Tabla ASCII', const Ejercicio1Page()),
                  _menuItem(context, 'Ejercicio 2: Factorial', const Ejercicio2Page()),
                  _menuItem(context, 'Ejercicio 3: MCD', const Ejercicio3Page()),
                  _menuItem(context, 'Ejercicio 4: Factorización', const Ejercicio4Page()),
                  _menuItem(context, 'Ejercicio 5: Números Primos', const Ejercicio5Page()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuItem(BuildContext context, String title, Widget page) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: ListTile(
        tileColor: const Color(0xFFe8ddcb),
        title: Text(
          title,
          style: GoogleFonts.robotoCondensed(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF37474F),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward, color: Color(0xFF031634)),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        ),
      ),
    );
  }

  Widget _drawerItem(BuildContext context, String title, Widget page) {
    return ListTile(
      leading: const Icon(Icons.calculate, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
