import 'package:flutter/material.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  const AnimatedPhysicalModelWidget({super.key});

  @override
  State<AnimatedPhysicalModelWidget> createState() =>
      _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState
    extends State<AnimatedPhysicalModelWidget> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedPhysicalModel(
            duration: const Duration(seconds: 3),
            curve: Curves.fastOutSlowIn,
            elevation: _isFlat ? 0 : 20,
            shape: BoxShape.rectangle,
            shadowColor: Colors.black,
            color: Colors.white,
            borderRadius: _isFlat
                ? const BorderRadius.all(Radius.circular(0))
                : const BorderRadius.all(Radius.circular(20)),
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
                _isFlat = !_isFlat;
              });
            },
            child: const Text('Change Shape'),
          ),
        ],
      ),
    );
  }
}
