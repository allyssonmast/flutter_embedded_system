import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/perdas_controller.dart';

class PerdasView extends GetView<PerdasController> {
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
