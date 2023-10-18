import 'package:flutter/material.dart';
import 'package:hive_invest/view/widget/login_text_box.dart';

///Main screen.
class MainScreen extends StatelessWidget {
  /// Constructor.
  const MainScreen({super.key});

  static const _height = 150.0;

  @override
  Widget build(BuildContext context) {
    final loginTextController = TextEditingController(text: '');
    final passwordTextController = TextEditingController(text: '');

    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.purple, Colors.blue],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 220, bottom: 80.0),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: _height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LoginTextBox(
                    controller: loginTextController,
                    color: Colors.blueAccent,
                  ),
                  LoginTextBox(
                    controller: passwordTextController,
                    color: Colors.yellowAccent,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ElevatedButton(
                onPressed: () {
                  return;
                },
                child: const Text('Enter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
