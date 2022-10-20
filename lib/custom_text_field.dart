import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.label,
      this.isPassword = false,
      required this.controller});

  final String? label;
  final bool isPassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label ?? 'Label',
      ),
    ));
  }
}
