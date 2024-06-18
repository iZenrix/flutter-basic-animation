import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedCrossFade(
            firstChild: Image.asset(
              'assets/images/animated_cross_fade/image 2.png',
              width: 200.0,
            ),
            secondChild: Image.asset(
              'assets/images/animated_cross_fade/image 1.png',
              width: 200.0,
            ),
            crossFadeState:
                _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFE3FDFD),
            ),
            onPressed: () {
              setState(() {
                _first = !_first;
              });
            },
            child: const Text(
              'Switch Girlfriend',
              style: TextStyle(
                color: Color(0xFF1B1B1B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
