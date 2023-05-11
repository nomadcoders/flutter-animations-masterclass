import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body: Center(
        child: Animate(
          effects: [
            FadeEffect(
              begin: 0,
              end: 1,
              duration: 5.seconds,
              curve: Curves.easeInCubic,
            ),
            ScaleEffect(
              alignment: Alignment.center,
              begin: Offset.zero,
              end: const Offset(1, 1),
              duration: 5.seconds,
            )
          ],
          child: const Text(
            'Hello!',
            style: TextStyle(fontSize: 66),
          ),
        ),
      ),
    );
  }
}
