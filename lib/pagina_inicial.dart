import 'package:flutter/material.dart';

class PantallaInicial extends StatelessWidget {
  const PantallaInicial({super.key});

  // Lista de rutas y etiquetas
  static final List<Map<String, String>> pantallas = List.generate(10, (index) {
    return {
      'ruta': '/pantalla${index + 1}',
      'titulo': 'Ver Pantalla ${_numeroEnTexto(index + 1)}',
    };
  });

  // Conversor de número a texto para nombres bonitos
  static String _numeroEnTexto(int numero) {
    const nombres = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
    return nombres[numero - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pantalla Inicial 1225",
          style: TextStyle(
            color: Color(0xffefaeae),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xff7c0707),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: pantallas.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final pantalla = pantallas[index];
            return ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, pantalla['ruta']!);
              },
              icon: const Icon(Icons.arrow_forward),
              label: Text(pantalla['titulo']!),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 18),
              ),
            );
          },
        ),
      ),
    );
  }
}
