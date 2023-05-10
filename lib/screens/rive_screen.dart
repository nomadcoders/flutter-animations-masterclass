import 'package:flutter/material.dart';

class RiveScreen extends StatefulWidget {
  const RiveScreen({super.key});

  @override
  State<RiveScreen> createState() => _RiveScreenState();
}

class _RiveScreenState extends State<RiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rive'),
      ),
    );
  }
}
