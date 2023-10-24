import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:language_translator_app/services/home_services.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeServices homeServices;
  HomeBloc(this.homeServices) : super(HomeState.initial()) {
    on<GetAllLanguagesEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final languages = await homeServices.getAllLanguages();
      emit(state.copyWith(
          isLoading: false, AllLanguageListwithCodeList: languages));
    });
    on<GetTransalatedTextEvent>((event, emit) async {
      final transalatedString = await homeServices.translateText(
          from: event.from, text: event.text, to: event.to);
      print("transalatedString: $transalatedString");
      emit(state.copyWith(traslatedText: transalatedString));
    });

   
  }
}
