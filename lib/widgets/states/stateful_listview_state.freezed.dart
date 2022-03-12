// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stateful_listview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatefulListviewStateTearOff {
  const _$StatefulListviewStateTearOff();

  _Init init() {
    return const _Init();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error(String message) {
    return _Error(
      message,
    );
  }

  _NoError noError(List<dynamic> list) {
    return _NoError(
      list,
    );
  }

  _LoadingMore loadingMore(List<dynamic> oldList) {
    return _LoadingMore(
      oldList,
    );
  }
}

/// @nodoc
const $StatefulListviewState = _$StatefulListviewStateTearOff();

/// @nodoc
mixin _$StatefulListviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> list) noError,
    required TResult Function(List<dynamic> oldList) loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NoError value) noError,
    required TResult Function(_LoadingMore value) loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatefulListviewStateCopyWith<$Res> {
  factory $StatefulListviewStateCopyWith(StatefulListviewState value,
          $Res Function(StatefulListviewState) then) =
      _$StatefulListviewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatefulListviewStateCopyWithImpl<$Res>
    implements $StatefulListviewStateCopyWith<$Res> {
  _$StatefulListviewStateCopyWithImpl(this._value, this._then);

  final StatefulListviewState _value;
  // ignore: unused_field
  final $Res Function(StatefulListviewState) _then;
}

/// @nodoc
abstract class _$InitCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) then) =
      __$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitCopyWithImpl<$Res>
    extends _$StatefulListviewStateCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(_Init _value, $Res Function(_Init) _then)
      : super(_value, (v) => _then(v as _Init));

  @override
  _Init get _value => super._value as _Init;
}

/// @nodoc

class _$_Init with DiagnosticableTreeMixin implements _Init {
  const _$_Init();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatefulListviewState.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StatefulListviewState.init'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> list) noError,
    required TResult Function(List<dynamic> oldList) loadingMore,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NoError value) noError,
    required TResult Function(_LoadingMore value) loadingMore,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements StatefulListviewState {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$StatefulListviewStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatefulListviewState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatefulListviewState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> list) noError,
    required TResult Function(List<dynamic> oldList) loadingMore,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NoError value) noError,
    required TResult Function(_LoadingMore value) loadingMore,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements StatefulListviewState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    extends _$StatefulListviewStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatefulListviewState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatefulListviewState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> list) noError,
    required TResult Function(List<dynamic> oldList) loadingMore,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NoError value) noError,
    required TResult Function(_LoadingMore value) loadingMore,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StatefulListviewState {
  const factory _Error(String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoErrorCopyWith<$Res> {
  factory _$NoErrorCopyWith(_NoError value, $Res Function(_NoError) then) =
      __$NoErrorCopyWithImpl<$Res>;
  $Res call({List<dynamic> list});
}

/// @nodoc
class __$NoErrorCopyWithImpl<$Res>
    extends _$StatefulListviewStateCopyWithImpl<$Res>
    implements _$NoErrorCopyWith<$Res> {
  __$NoErrorCopyWithImpl(_NoError _value, $Res Function(_NoError) _then)
      : super(_value, (v) => _then(v as _NoError));

  @override
  _NoError get _value => super._value as _NoError;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_NoError(
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_NoError with DiagnosticableTreeMixin implements _NoError {
  const _$_NoError(this.list);

  @override
  final List<dynamic> list;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatefulListviewState.noError(list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatefulListviewState.noError'))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoError &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  _$NoErrorCopyWith<_NoError> get copyWith =>
      __$NoErrorCopyWithImpl<_NoError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> list) noError,
    required TResult Function(List<dynamic> oldList) loadingMore,
  }) {
    return noError(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
  }) {
    return noError?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
    required TResult orElse(),
  }) {
    if (noError != null) {
      return noError(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NoError value) noError,
    required TResult Function(_LoadingMore value) loadingMore,
  }) {
    return noError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
  }) {
    return noError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (noError != null) {
      return noError(this);
    }
    return orElse();
  }
}

abstract class _NoError implements StatefulListviewState {
  const factory _NoError(List<dynamic> list) = _$_NoError;

  List<dynamic> get list;
  @JsonKey(ignore: true)
  _$NoErrorCopyWith<_NoError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingMoreCopyWith<$Res> {
  factory _$LoadingMoreCopyWith(
          _LoadingMore value, $Res Function(_LoadingMore) then) =
      __$LoadingMoreCopyWithImpl<$Res>;
  $Res call({List<dynamic> oldList});
}

/// @nodoc
class __$LoadingMoreCopyWithImpl<$Res>
    extends _$StatefulListviewStateCopyWithImpl<$Res>
    implements _$LoadingMoreCopyWith<$Res> {
  __$LoadingMoreCopyWithImpl(
      _LoadingMore _value, $Res Function(_LoadingMore) _then)
      : super(_value, (v) => _then(v as _LoadingMore));

  @override
  _LoadingMore get _value => super._value as _LoadingMore;

  @override
  $Res call({
    Object? oldList = freezed,
  }) {
    return _then(_LoadingMore(
      oldList == freezed
          ? _value.oldList
          : oldList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_LoadingMore with DiagnosticableTreeMixin implements _LoadingMore {
  const _$_LoadingMore(this.oldList);

  @override
  final List<dynamic> oldList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatefulListviewState.loadingMore(oldList: $oldList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatefulListviewState.loadingMore'))
      ..add(DiagnosticsProperty('oldList', oldList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadingMore &&
            const DeepCollectionEquality().equals(other.oldList, oldList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(oldList));

  @JsonKey(ignore: true)
  @override
  _$LoadingMoreCopyWith<_LoadingMore> get copyWith =>
      __$LoadingMoreCopyWithImpl<_LoadingMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> list) noError,
    required TResult Function(List<dynamic> oldList) loadingMore,
  }) {
    return loadingMore(oldList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
  }) {
    return loadingMore?.call(oldList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> list)? noError,
    TResult Function(List<dynamic> oldList)? loadingMore,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(oldList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_NoError value) noError,
    required TResult Function(_LoadingMore value) loadingMore,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_NoError value)? noError,
    TResult Function(_LoadingMore value)? loadingMore,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _LoadingMore implements StatefulListviewState {
  const factory _LoadingMore(List<dynamic> oldList) = _$_LoadingMore;

  List<dynamic> get oldList;
  @JsonKey(ignore: true)
  _$LoadingMoreCopyWith<_LoadingMore> get copyWith =>
      throw _privateConstructorUsedError;
}
