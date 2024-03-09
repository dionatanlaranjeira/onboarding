import 'package:flutter/material.dart';

class AnimatedDots extends StatelessWidget {
  final bool isActive;
  const AnimatedDots({Key? key, required this.isActive}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 300,
      ),
      height: 6,
      width: isActive ? 20 : 6,
      decoration: BoxDecoration(
        color:
            isActive ? Colors.green : const Color(0xFF868686).withOpacity(0.25),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
