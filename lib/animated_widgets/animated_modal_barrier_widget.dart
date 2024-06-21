import 'package:flutter/material.dart';

class AnimatedModalBarrierWidget extends StatefulWidget {
  const AnimatedModalBarrierWidget({super.key});

  @override
  State<AnimatedModalBarrierWidget> createState() => _AnimatedModalBarrierWidgetState();
}

class _AnimatedModalBarrierWidgetState extends State<AnimatedModalBarrierWidget> with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;

  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    ColorTween _colorTween = ColorTween(begin: Colors.transparent, end: Colors.black.withOpacity(0.5));

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _colorAnimation = _colorTween.animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: false,
      semanticsLabel: 'Semantics Label',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            if (_isPressed) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
            _isPressed = !_isPressed;
          },
          child: Text(_isPressed ? 'Hide Modal Barrier' : 'Show Modal Barrier'),
        ),
        Expanded(
          child: Center(
            child: _animatedModalBarrier,
          ),
        ),
      ],
    );
  }
}
