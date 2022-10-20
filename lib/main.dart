import 'package:another_application4/models/form_data.dart';
import 'package:flutter/material.dart';
import './form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void sendFormToBackend(FormData formData) {
    print("Sending data to backend: ${formData.username} ${formData.password}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: CustomForm(sendFormToBackend),
    );
  }
}
