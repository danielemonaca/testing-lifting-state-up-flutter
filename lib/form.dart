import 'package:another_application4/models/form_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import './custom_text_field.dart';
import './custom_button.dart';

class CustomForm extends StatelessWidget {
  final Function sendFormToBackend;
  CustomForm(this.sendFormToBackend, {super.key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _onSubmit() {
    sendFormToBackend(FormData(
        username: _usernameController.text,
        password: _passwordController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: <Widget>[
            CustomTextField(
              label: 'Username',
              controller: _usernameController,
            ),
            CustomTextField(
              label: 'Password',
              isPassword: true,
              controller: _passwordController,
            ),
            CustomButton(onSubmit: _onSubmit),
          ],
        ));
  }
}
