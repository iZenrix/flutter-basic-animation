import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({super.key});

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double paddingValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedPadding(
            padding: EdgeInsets.all(paddingValue),
            duration: const Duration(seconds: 1),
            child: const Text(
              'Animated Padding Widget',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                paddingValue = paddingValue == 0 ? 50.0 : 0.0;
              });
            },
            child: const Text('Add/Remove Padding'),
          ),
        ],
      ),
    );
  }
}
