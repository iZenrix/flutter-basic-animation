import 'package:flutter/material.dart';
import 'dart:async';

class AnimatedModalBarrierWidget extends StatefulWidget {
  const AnimatedModalBarrierWidget({super.key});

  @override
  State<AnimatedModalBarrierWidget> createState() =>
      _AnimatedModalBarrierWidgetState();
}

class _AnimatedModalBarrierWidgetState extends State<AnimatedModalBarrierWidget>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;

  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    ColorTween colorTween = ColorTween(
      begin: Colors.transparent,
      end: Colors.black.withOpacity(0.5),
    );

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _colorAnimation = colorTween.animate(_controller);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200,
              width: 200,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isPressed = true;
                      });
                      _controller.reset();
                      _controller.forward();
                      Future.delayed(const Duration(seconds: 5), () {
                        setState(() {
                          _isPressed = false;
                        });
                      });
                    },
                    child: const Text('Press Me'),
                  ),
                  if (_isPressed) _animatedModalBarrier,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
