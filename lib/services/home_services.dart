import 'dart:ffi';

abstract class HomeServices {
  Future<List<dynamic>> getAllLanguages();
 Future<String> translateText(
      {required String text, required String to, required String from});
}
