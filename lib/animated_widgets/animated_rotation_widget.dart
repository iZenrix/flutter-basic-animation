import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key});

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  double turnsValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedRotation(
            turns: turnsValue,
            duration: const Duration(seconds: 1),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                turnsValue = turnsValue == 0 ? 0.5 : 0.0;
              });
            },
            child: const Text('Rotate'),
          ),
        ],
      ),
    );
  }
}
