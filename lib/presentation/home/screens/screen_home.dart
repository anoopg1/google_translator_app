import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_translator_app/bloc/home/home_bloc.dart';
import 'package:language_translator_app/core/colors/colors.dart';
import 'package:language_translator_app/core/constants/constants.dart';
import 'package:language_translator_app/core/global_variables/global_variables.dart';
import 'package:language_translator_app/presentation/home/widgets/bottom_modal_list_widget.dart';
import 'package:language_translator_app/presentation/home/widgets/bottom_model_sheet_home_widget.dart';
import 'package:language_translator_app/presentation/home/widgets/text_form_widget.dart';

final fromTextController = TextEditingController();
final toTextController = TextEditingController();

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context)
        .add(const HomeEvent.getAllLanguagesEvent());

    void onFromLanguageSelected(
        String selectedLanguage, String selectedlanguageCode) {
      setState(() {
        FromLanguageButton = selectedLanguage;
        fromLanguageText = selectedLanguage;
        fromLanguageTextcode = selectedlanguageCode;
      });
    }

    void onToLanguageSelected(
        String selectedLanguage, String selectedlanguageCode) {
      setState(() {
        ToLanguageButton = selectedLanguage;
        toLanguageText = selectedLanguage;
        toLanguageTextcode = selectedlanguageCode;
      });
    }

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

            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Row(
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
                                  ),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: BottomModalSheetContentWidget(
                                      text: 'From',
                                      child: ListView.separated(
                                          itemBuilder: (context, index) {
                                            return Bottom_List_widget(
                                              language: state
                                                      .AllLanguageListwithCodeList[
                                                  index]['language'],
                                              onLanguageSelected:
                                                  onFromLanguageSelected,
                                              context: context,
                                              languageCode: state
                                                      .AllLanguageListwithCodeList[
                                                  index]['code'],
                                            );
                                          },
                                          separatorBuilder: (context, index) =>
                                              kheight10,
                                          itemCount: state
                                              .AllLanguageListwithCodeList
                                              .length),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            FromLanguageButton,
                            style: const TextStyle(fontSize: 18),
                          )),
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

                    //from language button
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.060,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.grey),
                              elevation: MaterialStatePropertyAll(5)),

                          //show from Bottom Modal Sheet
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
                                return SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: BottomModalSheetContentWidget(
                                      text: "To",
                                      child: ListView.separated(
                                          itemBuilder: (context, index) {
                                            return Bottom_List_widget(
                                                language: state
                                                        .AllLanguageListwithCodeList[
                                                    index]['language'],
                                                context: context,
                                                onLanguageSelected:
                                                    onToLanguageSelected,
                                                languageCode: state
                                                        .AllLanguageListwithCodeList[
                                                    index]['code']);
                                          },
                                          separatorBuilder: (context, index) =>
                                              kheight10,
                                          itemCount: state
                                              .AllLanguageListwithCodeList
                                              .length),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            ToLanguageButton,
                            style: const TextStyle(fontSize: 18),
                          )),
                    ),
                  ],
                );
              },
            ),
            kheight20,

            //text from language
          
          
            Text("Translate from $fromLanguageText"),
            kheight10,
            
            
            //
            //From text form widget
            //
            
            
            TextFormWidget(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return TextFormField(
                      maxLines: 9,
                      maxLength: 1200,
                      onChanged: (value) {
                        BlocProvider.of<HomeBloc>(context).add(
                            HomeEvent.getTransalatedTextEvent(
                                text: fromTextController.text,
                                from: fromLanguageTextcode,
                                to: toLanguageTextcode));

                        toTextController.text = state.traslatedText;
                      },
                      controller: fromTextController,
                    );
                  },
                ),
              ),
            ),

            kheight20,
            Text("Translate from $toLanguageText"),
            kheight10,


            // To text form widget

            
            TextFormWidget(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  maxLines: 9,
                  maxLength: 1200,
                  controller: toTextController,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
