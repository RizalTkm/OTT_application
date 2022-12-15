// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDownloadImages value) getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDownloadImages value)? getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDownloadImages value)? getDownloadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDownloadImagesCopyWith<$Res> {
  factory _$$GetDownloadImagesCopyWith(
          _$GetDownloadImages value, $Res Function(_$GetDownloadImages) then) =
      __$$GetDownloadImagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownloadImagesCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$GetDownloadImages>
    implements _$$GetDownloadImagesCopyWith<$Res> {
  __$$GetDownloadImagesCopyWithImpl(
      _$GetDownloadImages _value, $Res Function(_$GetDownloadImages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDownloadImages implements GetDownloadImages {
  const _$GetDownloadImages();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownloadImages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImages,
  }) {
    return getDownloadImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadImages,
  }) {
    return getDownloadImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImages,
    required TResult orElse(),
  }) {
    if (getDownloadImages != null) {
      return getDownloadImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDownloadImages value) getDownloadImages,
  }) {
    return getDownloadImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDownloadImages value)? getDownloadImages,
  }) {
    return getDownloadImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDownloadImages value)? getDownloadImages,
    required TResult orElse(),
  }) {
    if (getDownloadImages != null) {
      return getDownloadImages(this);
    }
    return orElse();
  }
}

abstract class GetDownloadImages implements DownloadsEvent {
  const factory GetDownloadImages() = _$GetDownloadImages;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isloading => throw _privateConstructorUsedError;
  List<DownloadsResult> get downloadimages =>
      throw _privateConstructorUsedError;
  bool get iserror => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res, DownloadsState>;
  @useResult
  $Res call(
      {bool isloading, List<DownloadsResult> downloadimages, bool iserror});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res, $Val extends DownloadsState>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? downloadimages = null,
    Object? iserror = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadimages: null == downloadimages
          ? _value.downloadimages
          : downloadimages // ignore: cast_nullable_to_non_nullable
              as List<DownloadsResult>,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadsStateCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$_DownloadsStateCopyWith(
          _$_DownloadsState value, $Res Function(_$_DownloadsState) then) =
      __$$_DownloadsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading, List<DownloadsResult> downloadimages, bool iserror});
}

/// @nodoc
class __$$_DownloadsStateCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res, _$_DownloadsState>
    implements _$$_DownloadsStateCopyWith<$Res> {
  __$$_DownloadsStateCopyWithImpl(
      _$_DownloadsState _value, $Res Function(_$_DownloadsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? downloadimages = null,
    Object? iserror = null,
  }) {
    return _then(_$_DownloadsState(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadimages: null == downloadimages
          ? _value._downloadimages
          : downloadimages // ignore: cast_nullable_to_non_nullable
              as List<DownloadsResult>,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DownloadsState implements _DownloadsState {
  const _$_DownloadsState(
      {required this.isloading,
      required final List<DownloadsResult> downloadimages,
      required this.iserror})
      : _downloadimages = downloadimages;

  @override
  final bool isloading;
  final List<DownloadsResult> _downloadimages;
  @override
  List<DownloadsResult> get downloadimages {
    if (_downloadimages is EqualUnmodifiableListView) return _downloadimages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloadimages);
  }

  @override
  final bool iserror;

  @override
  String toString() {
    return 'DownloadsState(isloading: $isloading, downloadimages: $downloadimages, iserror: $iserror)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadsState &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            const DeepCollectionEquality()
                .equals(other._downloadimages, _downloadimages) &&
            (identical(other.iserror, iserror) || other.iserror == iserror));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading,
      const DeepCollectionEquality().hash(_downloadimages), iserror);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadsStateCopyWith<_$_DownloadsState> get copyWith =>
      __$$_DownloadsStateCopyWithImpl<_$_DownloadsState>(this, _$identity);
}

abstract class _DownloadsState implements DownloadsState {
  const factory _DownloadsState(
      {required final bool isloading,
      required final List<DownloadsResult> downloadimages,
      required final bool iserror}) = _$_DownloadsState;

  @override
  bool get isloading;
  @override
  List<DownloadsResult> get downloadimages;
  @override
  bool get iserror;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadsStateCopyWith<_$_DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}
