import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Click on the box to animate',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: selected ? 100 : 250.0,
                height: 100.0,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(99),
                  ),
                  color: selected ? Colors.green : Colors.white,
                  border: selected
                      ? null
                      : Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                ),
                child: Center(
                  child: selected
                      ? const Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                      : const Text(
                          'Buy Now',
                          style: TextStyle(color: Colors.black),
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
