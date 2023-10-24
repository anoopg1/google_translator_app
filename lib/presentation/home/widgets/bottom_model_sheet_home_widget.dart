import 'package:flutter/material.dart';
import 'package:language_translator_app/core/colors/colors.dart';
import 'package:language_translator_app/core/constants/constants.dart';

class BottomModalSheetContentWidget extends StatelessWidget {
  const BottomModalSheetContentWidget({
    super.key, required this.text, required this.child,
  });

final String text;
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight10,
        Text(
          text,
          style: const TextStyle(fontSize: 20, color: kblack),
        ),
        kheight10,
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search languages",
              border: OutlineInputBorder()),
        ),
        kheight10,
        kheight5,
        Expanded(
          child: child
        )
      ],
    );
  }
}
