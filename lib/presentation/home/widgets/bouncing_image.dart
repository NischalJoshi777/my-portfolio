import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:sizer/sizer.dart';

import '../../../core/color/colors.dart';

class BouncingImage extends StatefulWidget {
  const BouncingImage({super.key});

  @override
  State<BouncingImage> createState() => _BouncingImageState();
}

class _BouncingImageState extends State<BouncingImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late SpringSimulation _springSimulation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      lowerBound: 0,
      upperBound: 300,
    );

    _springSimulation = SpringSimulation(
      const SpringDescription(
        mass: 0.4,
        stiffness: 100,
        damping: 10,
      ),
      0, // starting point
      16.h, // ending point
      0, // initial velocity
    );
    _startAnimation();
  }

  void _startAnimation() {
    _controller.animateWith(_springSimulation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
          offset: Offset(0, _controller.value), // Moving along Y-axis
          child: Container(
            width: 32.h, // Outer container width (includes border)
            height: 32.h, // Outer container height (includes border)
            decoration: const BoxDecoration(
                shape: BoxShape.circle, gradient: Palette.pinkpurple),
            child: Padding(
              padding: const EdgeInsets.all(6.0), // Border thickness
              child: ClipOval(
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/imgs/my_profile.jpeg',
                    fit: BoxFit
                        .cover, // Ensures the image covers the entire circle
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
