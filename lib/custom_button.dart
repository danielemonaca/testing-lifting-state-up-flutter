import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './custom_text_field.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onSubmit});

  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      onPressed: onSubmit,
      child: Text('Login'),
    ));
  }
}
