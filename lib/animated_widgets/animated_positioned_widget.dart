import 'package:flutter/material.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  const AnimatedPositionedWidget({super.key});

  @override
  State<AnimatedPositionedWidget> createState() =>
      _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: const Duration(seconds: 3),
            curve: Curves.fastOutSlowIn,
            top: selected ? 100 : 200,
            right: selected ? 100 : 200,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: const Text('Press Me'),
            ),
          ),
        ],
      ),
    );
  }
}
