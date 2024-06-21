import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({super.key});

  @override
  State<AnimatedDefaultTextStyleWidget> createState() => _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState extends State<AnimatedDefaultTextStyleWidget> {

  bool _first = true;
  double _fontSize = 20;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedDefaultTextStyle(
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const Text('English or Spanish'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 40 : 20;
                _color = _first ? Colors.red : Colors.blue;
                _first = !_first;
              });
            },
            child: const Text('Change Style'),
          ),
        ],
      ),
    );
  }
}
