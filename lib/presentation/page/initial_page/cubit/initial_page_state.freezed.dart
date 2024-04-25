// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InitialPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Country> countries) loaded,
    required TResult Function() loading,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Country> countries)? loaded,
    TResult? Function()? loading,
    TResult? Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Country> countries)? loaded,
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPageStateLoaded value) loaded,
    required TResult Function(InitialPageStateLoading value) loading,
    required TResult Function(InitialPageStateIdle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialPageStateLoaded value)? loaded,
    TResult? Function(InitialPageStateLoading value)? loading,
    TResult? Function(InitialPageStateIdle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPageStateLoaded value)? loaded,
    TResult Function(InitialPageStateLoading value)? loading,
    TResult Function(InitialPageStateIdle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialPageStateCopyWith<$Res> {
  factory $InitialPageStateCopyWith(
          InitialPageState value, $Res Function(InitialPageState) then) =
      _$InitialPageStateCopyWithImpl<$Res, InitialPageState>;
}

/// @nodoc
class _$InitialPageStateCopyWithImpl<$Res, $Val extends InitialPageState>
    implements $InitialPageStateCopyWith<$Res> {
  _$InitialPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialPageStateLoadedImplCopyWith<$Res> {
  factory _$$InitialPageStateLoadedImplCopyWith(
          _$InitialPageStateLoadedImpl value,
          $Res Function(_$InitialPageStateLoadedImpl) then) =
      __$$InitialPageStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Country> countries});
}

/// @nodoc
class __$$InitialPageStateLoadedImplCopyWithImpl<$Res>
    extends _$InitialPageStateCopyWithImpl<$Res, _$InitialPageStateLoadedImpl>
    implements _$$InitialPageStateLoadedImplCopyWith<$Res> {
  __$$InitialPageStateLoadedImplCopyWithImpl(
      _$InitialPageStateLoadedImpl _value,
      $Res Function(_$InitialPageStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_$InitialPageStateLoadedImpl(
      null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc

class _$InitialPageStateLoadedImpl implements InitialPageStateLoaded {
  const _$InitialPageStateLoadedImpl(final List<Country> countries)
      : _countries = countries;

  final List<Country> _countries;
  @override
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'InitialPageState.loaded(countries: $countries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialPageStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialPageStateLoadedImplCopyWith<_$InitialPageStateLoadedImpl>
      get copyWith => __$$InitialPageStateLoadedImplCopyWithImpl<
          _$InitialPageStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Country> countries) loaded,
    required TResult Function() loading,
    required TResult Function() idle,
  }) {
    return loaded(countries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Country> countries)? loaded,
    TResult? Function()? loading,
    TResult? Function()? idle,
  }) {
    return loaded?.call(countries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Country> countries)? loaded,
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(countries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPageStateLoaded value) loaded,
    required TResult Function(InitialPageStateLoading value) loading,
    required TResult Function(InitialPageStateIdle value) idle,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialPageStateLoaded value)? loaded,
    TResult? Function(InitialPageStateLoading value)? loading,
    TResult? Function(InitialPageStateIdle value)? idle,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPageStateLoaded value)? loaded,
    TResult Function(InitialPageStateLoading value)? loading,
    TResult Function(InitialPageStateIdle value)? idle,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class InitialPageStateLoaded implements InitialPageState {
  const factory InitialPageStateLoaded(final List<Country> countries) =
      _$InitialPageStateLoadedImpl;

  List<Country> get countries;
  @JsonKey(ignore: true)
  _$$InitialPageStateLoadedImplCopyWith<_$InitialPageStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialPageStateLoadingImplCopyWith<$Res> {
  factory _$$InitialPageStateLoadingImplCopyWith(
          _$InitialPageStateLoadingImpl value,
          $Res Function(_$InitialPageStateLoadingImpl) then) =
      __$$InitialPageStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialPageStateLoadingImplCopyWithImpl<$Res>
    extends _$InitialPageStateCopyWithImpl<$Res, _$InitialPageStateLoadingImpl>
    implements _$$InitialPageStateLoadingImplCopyWith<$Res> {
  __$$InitialPageStateLoadingImplCopyWithImpl(
      _$InitialPageStateLoadingImpl _value,
      $Res Function(_$InitialPageStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialPageStateLoadingImpl implements InitialPageStateLoading {
  const _$InitialPageStateLoadingImpl();

  @override
  String toString() {
    return 'InitialPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialPageStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Country> countries) loaded,
    required TResult Function() loading,
    required TResult Function() idle,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Country> countries)? loaded,
    TResult? Function()? loading,
    TResult? Function()? idle,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Country> countries)? loaded,
    TResult Function()? loading,
    TResult Function()? idle,
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
    required TResult Function(InitialPageStateLoaded value) loaded,
    required TResult Function(InitialPageStateLoading value) loading,
    required TResult Function(InitialPageStateIdle value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialPageStateLoaded value)? loaded,
    TResult? Function(InitialPageStateLoading value)? loading,
    TResult? Function(InitialPageStateIdle value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPageStateLoaded value)? loaded,
    TResult Function(InitialPageStateLoading value)? loading,
    TResult Function(InitialPageStateIdle value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class InitialPageStateLoading implements InitialPageState {
  const factory InitialPageStateLoading() = _$InitialPageStateLoadingImpl;
}

/// @nodoc
abstract class _$$InitialPageStateIdleImplCopyWith<$Res> {
  factory _$$InitialPageStateIdleImplCopyWith(_$InitialPageStateIdleImpl value,
          $Res Function(_$InitialPageStateIdleImpl) then) =
      __$$InitialPageStateIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialPageStateIdleImplCopyWithImpl<$Res>
    extends _$InitialPageStateCopyWithImpl<$Res, _$InitialPageStateIdleImpl>
    implements _$$InitialPageStateIdleImplCopyWith<$Res> {
  __$$InitialPageStateIdleImplCopyWithImpl(_$InitialPageStateIdleImpl _value,
      $Res Function(_$InitialPageStateIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialPageStateIdleImpl implements InitialPageStateIdle {
  const _$InitialPageStateIdleImpl();

  @override
  String toString() {
    return 'InitialPageState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialPageStateIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Country> countries) loaded,
    required TResult Function() loading,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Country> countries)? loaded,
    TResult? Function()? loading,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Country> countries)? loaded,
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialPageStateLoaded value) loaded,
    required TResult Function(InitialPageStateLoading value) loading,
    required TResult Function(InitialPageStateIdle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialPageStateLoaded value)? loaded,
    TResult? Function(InitialPageStateLoading value)? loading,
    TResult? Function(InitialPageStateIdle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialPageStateLoaded value)? loaded,
    TResult Function(InitialPageStateLoading value)? loading,
    TResult Function(InitialPageStateIdle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class InitialPageStateIdle implements InitialPageState {
  const factory InitialPageStateIdle() = _$InitialPageStateIdleImpl;
}
