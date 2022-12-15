// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FastLaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughEventCopyWith<$Res> {
  factory $FastLaughEventCopyWith(
          FastLaughEvent value, $Res Function(FastLaughEvent) then) =
      _$FastLaughEventCopyWithImpl<$Res, FastLaughEvent>;
}

/// @nodoc
class _$FastLaughEventCopyWithImpl<$Res, $Val extends FastLaughEvent>
    implements $FastLaughEventCopyWith<$Res> {
  _$FastLaughEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$initializeCopyWith<$Res> {
  factory _$$initializeCopyWith(
          _$initialize value, $Res Function(_$initialize) then) =
      __$$initializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initializeCopyWithImpl<$Res>
    extends _$FastLaughEventCopyWithImpl<$Res, _$initialize>
    implements _$$initializeCopyWith<$Res> {
  __$$initializeCopyWithImpl(
      _$initialize _value, $Res Function(_$initialize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initialize implements initialize {
  const _$initialize();

  @override
  String toString() {
    return 'FastLaughEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class initialize implements FastLaughEvent {
  const factory initialize() = _$initialize;
}

/// @nodoc
mixin _$FastLaughState {
  List<DownloadsResult> get vidoeListimage =>
      throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  bool get iserror => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastLaughStateCopyWith<FastLaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughStateCopyWith<$Res> {
  factory $FastLaughStateCopyWith(
          FastLaughState value, $Res Function(FastLaughState) then) =
      _$FastLaughStateCopyWithImpl<$Res, FastLaughState>;
  @useResult
  $Res call(
      {List<DownloadsResult> vidoeListimage, bool isloading, bool iserror});
}

/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res, $Val extends FastLaughState>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vidoeListimage = null,
    Object? isloading = null,
    Object? iserror = null,
  }) {
    return _then(_value.copyWith(
      vidoeListimage: null == vidoeListimage
          ? _value.vidoeListimage
          : vidoeListimage // ignore: cast_nullable_to_non_nullable
              as List<DownloadsResult>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DownloadsResult> vidoeListimage, bool isloading, bool iserror});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FastLaughStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vidoeListimage = null,
    Object? isloading = null,
    Object? iserror = null,
  }) {
    return _then(_$_Initial(
      vidoeListimage: null == vidoeListimage
          ? _value._vidoeListimage
          : vidoeListimage // ignore: cast_nullable_to_non_nullable
              as List<DownloadsResult>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<DownloadsResult> vidoeListimage,
      required this.isloading,
      required this.iserror})
      : _vidoeListimage = vidoeListimage;

  final List<DownloadsResult> _vidoeListimage;
  @override
  List<DownloadsResult> get vidoeListimage {
    if (_vidoeListimage is EqualUnmodifiableListView) return _vidoeListimage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vidoeListimage);
  }

  @override
  final bool isloading;
  @override
  final bool iserror;

  @override
  String toString() {
    return 'FastLaughState(vidoeListimage: $vidoeListimage, isloading: $isloading, iserror: $iserror)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._vidoeListimage, _vidoeListimage) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.iserror, iserror) || other.iserror == iserror));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_vidoeListimage), isloading, iserror);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements FastLaughState {
  const factory _Initial(
      {required final List<DownloadsResult> vidoeListimage,
      required final bool isloading,
      required final bool iserror}) = _$_Initial;

  @override
  List<DownloadsResult> get vidoeListimage;
  @override
  bool get isloading;
  @override
  bool get iserror;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
