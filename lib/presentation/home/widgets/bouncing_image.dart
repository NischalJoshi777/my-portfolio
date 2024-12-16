import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:my_portfolio/core/widgets/index.dart';
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

  @override
  void initState() {
    super.initState();

    // Initialize AnimationController with a temporary upperBound
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0,
      upperBound: 300, // Temporary placeholder value, to be updated later
    );
  }

  void _startAnimation(double dropHeight) {
    // Update the upperBound of the controller dynamically
    _controller.stop();
    final springSimulation = SpringSimulation(
      const SpringDescription(
        mass: 0.4,
        stiffness: 100,
        damping: 10,
      ),
      0, // starting point
      dropHeight, // dynamic ending point
      0, // initial velocity
    );

    _controller.animateWith(springSimulation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Determine drop height dynamically during build
    final double dropHeight = ResponsiveSize.isMobile(context) ? 1.h : 16.h;

    // Start animation only if the upperBound needs to be updated
    if (_controller.upperBound != dropHeight) {
      _startAnimation(dropHeight);
    }

    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
          offset: Offset(0, _controller.value), // Moving along Y-axis
          child: Container(
            width: ResponsiveSize.isMobile(context)
                ? 20.h
                : 28.h, // Outer container width (includes border)
            height: ResponsiveSize.isMobile(context)
                ? 20.h
                : 28.h, // Outer container height (includes border)
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
