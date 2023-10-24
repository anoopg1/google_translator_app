part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllLanguagesEvent() = GetAllLanguagesEvent;
  const factory HomeEvent.getTransalatedTextEvent({ required String text,
    required String from,
    required String to,}) = GetTransalatedTextEvent;
 
}
