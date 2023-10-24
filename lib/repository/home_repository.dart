import 'dart:convert';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:language_translator_app/core/api_endpoints/api_endpoints.dart';
import 'package:language_translator_app/core/global_variables/global_variables.dart';
import 'package:language_translator_app/services/home_services.dart';
import 'package:http/http.dart' as http;

@Singleton(as: HomeServices)
class HomeRepository implements HomeServices {
  @override
  Future<List<dynamic>> getAllLanguages() async {
    final Response response = await http.get(
      Uri.parse(
          'https://google-translate113.p.rapidapi.com/api/v1/translator/support-languages'),
      headers: <String, String>{
        'X-RapidAPI-Key': ApiEndpoints.apiKey,
        'X-RapidAPI-Host': ApiEndpoints.rapidApiHost,
      },
    );
    if (response.statusCode == 200) {
      final List<dynamic> AllLanguageListwithCode =
          jsonDecode(response.body) as List;
      print("AllLanguageListwithCode: $AllLanguageListwithCode");
      return AllLanguageListwithCode;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return [];
    }
  }

  @override
  Future<String> translateText(
      {required String text, required String to, required String from}) async {
    final body = {
      'from': from,
      'to': to,
      'text': text,
    };

    final headers = {
      'content-type': 'application/x-www-form-urlencoded',
      'X-RapidAPI-Key': 'bbb646f7b7mshf4ffb288b7d1bd7p1dcda8jsnf3165206607f',
      'X-RapidAPI-Host': 'google-translate113.p.rapidapi.com'
    };

    final response = await http.post(
      Uri.parse(ApiEndpoints.translatelextUrl),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);

      final translatedString = await jsonResponse['trans'];
      print("translatedString: $translatedString");
      return translatedString;
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
    return translatedString;
  }
}
