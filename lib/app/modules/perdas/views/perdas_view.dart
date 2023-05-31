import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PerdasView extends StatelessWidget {
  const PerdasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PerdasView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PerdasView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
