import 'package:flutter/material.dart';

class Variabails extends StatelessWidget {
  final String title;
  final String subtitle;
  const Variabails({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(subtitle),
        const SizedBox(height: 8,)
      ],
    );
  }
}
