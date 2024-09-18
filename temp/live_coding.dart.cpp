import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Login(),
        ),
      ),
    );
  }
}

/// Login-Screen
/// Braucht Benutzer-Name und Passwort
/// -> Texteingabefelder
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          // Zentriert die Elemente vertikal in der Column.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const WelcomeText(),
            Container(height: 64),
            const Text("Benutzername:"),
            const TextField(),
            Container(height: 16),
            const Text("Passwort:"),
            const TextField(),
            Container(height: 64),
            const ElevatedButton(onPressed: null, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Willkommen, lieber Benutzer.\nBitte melden dich an",
        textAlign: TextAlign.center,
      ),
    );
  }
}
