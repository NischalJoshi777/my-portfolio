import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:sizer/sizer.dart';

class SlidingImage extends StatefulWidget {
  const SlidingImage({super.key});

  @override
  State<SlidingImage> createState() => _SlidingImageState();
}

class _SlidingImageState extends State<SlidingImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _position;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1000,
      ),
    );
    _position = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _position,
      child: Container(
        width: 20.h,
        height: 20.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: Palette.pinkpurple,
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ClipOval(
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/imgs/my_profile.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
