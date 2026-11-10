/* Réponses aux questions :
1- push ouvre une nouvelle page en conservant la précédente. pushReplacement remplace la page actuelle par une nouvelle page.

2- Pour fermer le menu de navigation avant d’ouvrir la page Animé avec Navigator.push().

3-La page Animé possède une flèche retour car elle a été ouverte avec Navigator.push() depuis une autre page. L’accueil n’en a pas car c’est la première page de l’application.

*/
import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 124, 91, 138),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF876297)),
      ),
      home: const LoginPage(),
    );
  }
}
