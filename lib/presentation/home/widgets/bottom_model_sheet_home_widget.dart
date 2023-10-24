import 'package:flutter/material.dart';
import 'package:language_translator_app/core/colors/colors.dart';
import 'package:language_translator_app/core/constants/constants.dart';

class BottomModalSheetContentWidget extends StatelessWidget {
  const BottomModalSheetContentWidget(
      {super.key,
      required this.text,
      required this.language,
      required this.itemCount});

  final String text;
  final String language;
  final int itemCount;

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
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: kblack,
                  ),
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          language,
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text("(en)", style: const TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => kheight10,
              itemCount: itemCount),
        )
      ],
    );
  }
}
