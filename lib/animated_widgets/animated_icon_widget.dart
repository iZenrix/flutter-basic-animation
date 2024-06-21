import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget> with TickerProviderStateMixin {
  bool _isPlaying = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_isPlaying) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
        _isPlaying = !_isPlaying;
      },
      child: Center(
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: _controller,
          size: 100,
        ),
      ),
    );
  }
}
