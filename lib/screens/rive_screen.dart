import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveScreen extends StatefulWidget {
  const RiveScreen({super.key});

  @override
  State<RiveScreen> createState() => _RiveScreenState();
}

class _RiveScreenState extends State<RiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const RiveAnimation.asset(
            "assets/animations/balls-animation.riv",
            fit: BoxFit.fill,
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: const Center(
                child: Text(
                  "Welcome to AI App",
                  style: TextStyle(
                    fontSize: 28,
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
