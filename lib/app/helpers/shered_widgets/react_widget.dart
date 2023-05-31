import 'package:flutter/material.dart';
import 'package:validadores/Validador.dart';

class CustomerTextField extends StatelessWidget {
  final String name;
  final bool isPassword;
  final Function(String)? validator;
  final TextEditingController controller;
  const CustomerTextField(
      {this.isPassword = false,
      Key? key,
      required this.name,
      required this.controller,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        autofocus: false,
        controller: controller,
        obscureText: isPassword,
        validator: (string) => validator != null
            ? validator!(string!)
            : Validador()
                .add(Validar.OBRIGATORIO, msg: "Campo obrigatório")
                .valido(string),
        decoration: InputDecoration(
          labelText: name,
          isDense: true,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
