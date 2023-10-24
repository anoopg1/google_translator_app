// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLanguagesEvent,
    required TResult Function(String text, String from, String to)
        getTransalatedTextEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLanguagesEvent,
    TResult? Function(String text, String from, String to)?
        getTransalatedTextEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLanguagesEvent,
    TResult Function(String text, String from, String to)?
        getTransalatedTextEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLanguagesEvent value) getAllLanguagesEvent,
    required TResult Function(GetTransalatedTextEvent value)
        getTransalatedTextEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLanguagesEvent value)? getAllLanguagesEvent,
    TResult? Function(GetTransalatedTextEvent value)? getTransalatedTextEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLanguagesEvent value)? getAllLanguagesEvent,
    TResult Function(GetTransalatedTextEvent value)? getTransalatedTextEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllLanguagesEventImplCopyWith<$Res> {
  factory _$$GetAllLanguagesEventImplCopyWith(_$GetAllLanguagesEventImpl value,
          $Res Function(_$GetAllLanguagesEventImpl) then) =
      __$$GetAllLanguagesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllLanguagesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetAllLanguagesEventImpl>
    implements _$$GetAllLanguagesEventImplCopyWith<$Res> {
  __$$GetAllLanguagesEventImplCopyWithImpl(_$GetAllLanguagesEventImpl _value,
      $Res Function(_$GetAllLanguagesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllLanguagesEventImpl implements GetAllLanguagesEvent {
  const _$GetAllLanguagesEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getAllLanguagesEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllLanguagesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLanguagesEvent,
    required TResult Function(String text, String from, String to)
        getTransalatedTextEvent,
  }) {
    return getAllLanguagesEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLanguagesEvent,
    TResult? Function(String text, String from, String to)?
        getTransalatedTextEvent,
  }) {
    return getAllLanguagesEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLanguagesEvent,
    TResult Function(String text, String from, String to)?
        getTransalatedTextEvent,
    required TResult orElse(),
  }) {
    if (getAllLanguagesEvent != null) {
      return getAllLanguagesEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLanguagesEvent value) getAllLanguagesEvent,
    required TResult Function(GetTransalatedTextEvent value)
        getTransalatedTextEvent,
  }) {
    return getAllLanguagesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLanguagesEvent value)? getAllLanguagesEvent,
    TResult? Function(GetTransalatedTextEvent value)? getTransalatedTextEvent,
  }) {
    return getAllLanguagesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLanguagesEvent value)? getAllLanguagesEvent,
    TResult Function(GetTransalatedTextEvent value)? getTransalatedTextEvent,
    required TResult orElse(),
  }) {
    if (getAllLanguagesEvent != null) {
      return getAllLanguagesEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllLanguagesEvent implements HomeEvent {
  const factory GetAllLanguagesEvent() = _$GetAllLanguagesEventImpl;
}

/// @nodoc
abstract class _$$GetTransalatedTextEventImplCopyWith<$Res> {
  factory _$$GetTransalatedTextEventImplCopyWith(
          _$GetTransalatedTextEventImpl value,
          $Res Function(_$GetTransalatedTextEventImpl) then) =
      __$$GetTransalatedTextEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String from, String to});
}

/// @nodoc
class __$$GetTransalatedTextEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTransalatedTextEventImpl>
    implements _$$GetTransalatedTextEventImplCopyWith<$Res> {
  __$$GetTransalatedTextEventImplCopyWithImpl(
      _$GetTransalatedTextEventImpl _value,
      $Res Function(_$GetTransalatedTextEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$GetTransalatedTextEventImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTransalatedTextEventImpl implements GetTransalatedTextEvent {
  const _$GetTransalatedTextEventImpl(
      {required this.text, required this.from, required this.to});

  @override
  final String text;
  @override
  final String from;
  @override
  final String to;

  @override
  String toString() {
    return 'HomeEvent.getTransalatedTextEvent(text: $text, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTransalatedTextEventImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTransalatedTextEventImplCopyWith<_$GetTransalatedTextEventImpl>
      get copyWith => __$$GetTransalatedTextEventImplCopyWithImpl<
          _$GetTransalatedTextEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLanguagesEvent,
    required TResult Function(String text, String from, String to)
        getTransalatedTextEvent,
  }) {
    return getTransalatedTextEvent(text, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLanguagesEvent,
    TResult? Function(String text, String from, String to)?
        getTransalatedTextEvent,
  }) {
    return getTransalatedTextEvent?.call(text, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLanguagesEvent,
    TResult Function(String text, String from, String to)?
        getTransalatedTextEvent,
    required TResult orElse(),
  }) {
    if (getTransalatedTextEvent != null) {
      return getTransalatedTextEvent(text, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLanguagesEvent value) getAllLanguagesEvent,
    required TResult Function(GetTransalatedTextEvent value)
        getTransalatedTextEvent,
  }) {
    return getTransalatedTextEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLanguagesEvent value)? getAllLanguagesEvent,
    TResult? Function(GetTransalatedTextEvent value)? getTransalatedTextEvent,
  }) {
    return getTransalatedTextEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLanguagesEvent value)? getAllLanguagesEvent,
    TResult Function(GetTransalatedTextEvent value)? getTransalatedTextEvent,
    required TResult orElse(),
  }) {
    if (getTransalatedTextEvent != null) {
      return getTransalatedTextEvent(this);
    }
    return orElse();
  }
}

abstract class GetTransalatedTextEvent implements HomeEvent {
  const factory GetTransalatedTextEvent(
      {required final String text,
      required final String from,
      required final String to}) = _$GetTransalatedTextEventImpl;

  String get text;
  String get from;
  String get to;
  @JsonKey(ignore: true)
  _$$GetTransalatedTextEventImplCopyWith<_$GetTransalatedTextEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<dynamic> get AllLanguageListwithCodeList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get traslatedText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<dynamic> AllLanguageListwithCodeList,
      bool isLoading,
      String traslatedText});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? AllLanguageListwithCodeList = null,
    Object? isLoading = null,
    Object? traslatedText = null,
  }) {
    return _then(_value.copyWith(
      AllLanguageListwithCodeList: null == AllLanguageListwithCodeList
          ? _value.AllLanguageListwithCodeList
          : AllLanguageListwithCodeList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      traslatedText: null == traslatedText
          ? _value.traslatedText
          : traslatedText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> AllLanguageListwithCodeList,
      bool isLoading,
      String traslatedText});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? AllLanguageListwithCodeList = null,
    Object? isLoading = null,
    Object? traslatedText = null,
  }) {
    return _then(_$HomeStateImpl(
      AllLanguageListwithCodeList: null == AllLanguageListwithCodeList
          ? _value._AllLanguageListwithCodeList
          : AllLanguageListwithCodeList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      traslatedText: null == traslatedText
          ? _value.traslatedText
          : traslatedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required final List<dynamic> AllLanguageListwithCodeList,
      required this.isLoading,
      required this.traslatedText})
      : _AllLanguageListwithCodeList = AllLanguageListwithCodeList;

  final List<dynamic> _AllLanguageListwithCodeList;
  @override
  List<dynamic> get AllLanguageListwithCodeList {
    if (_AllLanguageListwithCodeList is EqualUnmodifiableListView)
      return _AllLanguageListwithCodeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_AllLanguageListwithCodeList);
  }

  @override
  final bool isLoading;
  @override
  final String traslatedText;

  @override
  String toString() {
    return 'HomeState(AllLanguageListwithCodeList: $AllLanguageListwithCodeList, isLoading: $isLoading, traslatedText: $traslatedText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(
                other._AllLanguageListwithCodeList,
                _AllLanguageListwithCodeList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.traslatedText, traslatedText) ||
                other.traslatedText == traslatedText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_AllLanguageListwithCodeList),
      isLoading,
      traslatedText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<dynamic> AllLanguageListwithCodeList,
      required final bool isLoading,
      required final String traslatedText}) = _$HomeStateImpl;

  @override
  List<dynamic> get AllLanguageListwithCodeList;
  @override
  bool get isLoading;
  @override
  String get traslatedText;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
