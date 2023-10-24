import 'package:flutter/material.dart';
import 'package:language_translator_app/core/colors/colors.dart';
import 'package:language_translator_app/core/constants/constants.dart';
import 'package:language_translator_app/presentation/home/widgets/bottom_model_sheet_home_widget.dart';
import 'package:language_translator_app/presentation/home/widgets/text_form_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            kheight20,

            //Header

            const Text(
              "Text Translation",
              style: TextStyle(fontSize: 30),
            ),
            kheight10,
            const Divider(
              height: 6,
              color: kwhite,
            ),
            kheight20,

            //Language selection buttons

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.060,
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey),
                          elevation: MaterialStatePropertyAll(5)),
                      onPressed: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(
                                    20,
                                  ),
                                  topLeft: Radius.circular(
                                    20,
                                  ))),
                          context: context,
                          builder: (context) {
                            return const SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: BottomModalSheetContentWidget(
                                    text: "From",
                                    language: "English",
                                    itemCount: 12),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text("From")),
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: kwhite,
                      size: 10,
                    ),
                    Icon(
                      Icons.arrow_back,
                      color: kwhite,
                      size: 10,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.060,
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey),
                          elevation: MaterialStatePropertyAll(5)),
                      onPressed: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(
                                    20,
                                  ),
                                  topLeft: Radius.circular(
                                    20,
                                  ))),
                          context: context,
                          builder: (context) {
                            return const SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: BottomModalSheetContentWidget(
                                    text: "From",
                                    language: "Malayalam",
                                    itemCount: 12),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text("To")),
                ),
              ],
            ),
            kheight20,
            const TextFormWidget(),
            kheight20,
            const TextFormWidget()
          ],
        ),
      )),
    );
  }
}
