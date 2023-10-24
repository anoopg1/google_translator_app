part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<dynamic> AllLanguageListwithCodeList,
    required bool isLoading,
    required String traslatedText,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      AllLanguageListwithCodeList: [],
      traslatedText: "",
      isLoading: false,
    );
  }
}
