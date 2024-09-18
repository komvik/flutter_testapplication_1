import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Name:",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                  Container(height: 64),
                  const SizedBox(
                    width: 220,
                    child: TextField(),
                  ),
                ],
              ),
              Container(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LoginButton(),
                  Container(width: 100),
                  const SignUpButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(
            disabledBackgroundColor: const Color.fromARGB(255, 217, 202, 248)),
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 22),
        ));
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(
            disabledBackgroundColor: const Color.fromARGB(255, 217, 202, 248)),
        child: const Text(
          "SignUp",
          style: TextStyle(fontSize: 22),
        ));
  }
}
