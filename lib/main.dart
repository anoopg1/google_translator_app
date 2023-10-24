import 'package:flutter/material.dart';
import 'package:language_translator_app/bloc/home/home_bloc.dart';
import 'package:language_translator_app/core/colors/colors.dart';
import 'package:language_translator_app/core/dependency_injection/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_translator_app/presentation/home/screens/screen_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>getIt<HomeBloc>(),
        ),
      ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: kblack,
            textTheme: Typography.whiteCupertino),
        home: const ScreenHome(),
      ),
    );
  }
}
