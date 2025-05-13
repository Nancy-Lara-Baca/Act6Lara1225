import 'package:flutter/material.dart';
import 'package:Lara1225/pagina_inicial.dart';
import 'package:Lara1225/pagina_uno.dart';
import 'package:Lara1225/pagina_dos.dart';
import 'package:Lara1225/pagina_tres.dart';
import 'package:Lara1225/pagina_cuatro.dart';
import 'package:Lara1225/pagina_cinco.dart';
import 'package:Lara1225/pagina_seis.dart';
import 'package:Lara1225/pagina_siete.dart';
import 'package:Lara1225/pagina_ocho.dart';
import 'package:Lara1225/pagina_nueve.dart';
import 'package:Lara1225/pagina_diez.dart';

void main() => runApp(MisWidgetsRutas());

class MisWidgetsRutas extends StatelessWidget {
  const MisWidgetsRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicial(),
        '/pantalla1': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
      },
    );
  }
}
