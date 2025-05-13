import 'package:flutter/material.dart';

class PantallaDiez extends StatelessWidget {
  const PantallaDiez({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // 👉 Fondo degradado
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.indigo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myWidget(),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Regresar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

myWidget() => Builder(
      builder: (BuildContext context) {
        return Center(
          child: Text(
            'Text with Theme',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Colors.white, // 👉 Cambia el color de texto a blanco
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
