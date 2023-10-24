import 'package:flutter/material.dart';
import 'package:language_translator_app/core/colors/colors.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.30,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: kgrey,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            maxLength: 1200,
            maxLines: 10,
          ),
        ));
  }
}
