import 'package:flutter/material.dart';

class ElevatedButtonHomeWidget extends StatelessWidget {
  const ElevatedButtonHomeWidget(
      {super.key, required this.text, required this.function});
  final String text;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          function;
        },
        child: Text(text));
  }
}
