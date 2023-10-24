import 'package:flutter/material.dart';
import 'package:language_translator_app/core/colors/colors.dart';

class Bottom_List_widget extends StatefulWidget {
  const Bottom_List_widget({
    super.key,
    required this.language,
    required this.context,
    required this.onLanguageSelected,
    required this.languageCode,
  });

  final String language;
  final String languageCode;
  final BuildContext context;
  final Function(String,String) onLanguageSelected;

  @override
  State<Bottom_List_widget> createState() => _Bottom_List_widgetState();
}

class _Bottom_List_widgetState extends State<Bottom_List_widget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onLanguageSelected(widget.language,widget.languageCode);
        Navigator.pop(context);
      },
      child: Container(
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
                widget.language,
                style: const TextStyle(fontSize: 20),
              ),
              Text(" (${widget.languageCode})",
                  style: const TextStyle(fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
