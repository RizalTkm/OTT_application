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
    required TResult Function() getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getHomeScreenData value) getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getHomeScreenData value)? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getHomeScreenData value)? getHomeScreenData,
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
abstract class _$$getHomeScreenDataCopyWith<$Res> {
  factory _$$getHomeScreenDataCopyWith(
          _$getHomeScreenData value, $Res Function(_$getHomeScreenData) then) =
      __$$getHomeScreenDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getHomeScreenDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$getHomeScreenData>
    implements _$$getHomeScreenDataCopyWith<$Res> {
  __$$getHomeScreenDataCopyWithImpl(
      _$getHomeScreenData _value, $Res Function(_$getHomeScreenData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getHomeScreenData implements getHomeScreenData {
  const _$getHomeScreenData();

  @override
  String toString() {
    return 'HomeEvent.getHomeScreenData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getHomeScreenData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) {
    return getHomeScreenData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeScreenData,
  }) {
    return getHomeScreenData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getHomeScreenData value) getHomeScreenData,
  }) {
    return getHomeScreenData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getHomeScreenData value)? getHomeScreenData,
  }) {
    return getHomeScreenData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData(this);
    }
    return orElse();
  }
}

abstract class getHomeScreenData implements HomeEvent {
  const factory getHomeScreenData() = _$getHomeScreenData;
}

/// @nodoc
mixin _$HomeState {
  String get dataID => throw _privateConstructorUsedError;
  List<DownloadsResult> get homeMainImage => throw _privateConstructorUsedError;
  List<ComingSoonDataResult> get releasedPYMovies =>
      throw _privateConstructorUsedError;
  List<ComingSoonDataResult> get trendingNowMovies =>
      throw _privateConstructorUsedError;
  List<ComingSoonDataResult> get tenseDaramas =>
      throw _privateConstructorUsedError;
  List<ComingSoonDataResult> get southIndianCinema =>
      throw _privateConstructorUsedError;
  List<EveryoneWatchingDataResult> get topTenTvshows =>
      throw _privateConstructorUsedError;
  bool get iserror => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;

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
      {String dataID,
      List<DownloadsResult> homeMainImage,
      List<ComingSoonDataResult> releasedPYMovies,
      List<ComingSoonDataResult> trendingNowMovies,
      List<ComingSoonDataResult> tenseDaramas,
      List<ComingSoonDataResult> southIndianCinema,
      List<EveryoneWatchingDataResult> topTenTvshows,
      bool iserror,
      bool isloading});
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
    Object? dataID = null,
    Object? homeMainImage = null,
    Object? releasedPYMovies = null,
    Object? trendingNowMovies = null,
    Object? tenseDaramas = null,
    Object? southIndianCinema = null,
    Object? topTenTvshows = null,
    Object? iserror = null,
    Object? isloading = null,
  }) {
    return _then(_value.copyWith(
      dataID: null == dataID
          ? _value.dataID
          : dataID // ignore: cast_nullable_to_non_nullable
              as String,
      homeMainImage: null == homeMainImage
          ? _value.homeMainImage
          : homeMainImage // ignore: cast_nullable_to_non_nullable
              as List<DownloadsResult>,
      releasedPYMovies: null == releasedPYMovies
          ? _value.releasedPYMovies
          : releasedPYMovies // ignore: cast_nullable_to_non_nullable
              as List<ComingSoonDataResult>,
      trendingNowMovies: null == trendingNowMovies
          ? _value.trendingNowMovies
          : trendingNowMovies // ignore: cast_nullable_to_non_nullable
              as List<ComingSoonDataResult>,
      tenseDaramas: null == tenseDaramas
          ? _value.tenseDaramas
          : tenseDaramas // ignore: cast_nullable_to_non_nullable
              as List<ComingSoonDataResult>,
      southIndianCinema: null == southIndianCinema
          ? _value.southIndianCinema
          : southIndianCinema // ignore: cast_nullable_to_non_nullable
              as List<ComingSoonDataResult>,
      topTenTvshows: null == topTenTvshows
          ? _value.topTenTvshows
          : topTenTvshows // ignore: cast_nullable_to_non_nullable
              as List<EveryoneWatchingDataResult>,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dataID,
      List<DownloadsResult> homeMainImage,
      List<ComingSoonDataResult> releasedPYMovies,
      List<ComingSoonDataResult> trendingNowMovies,
      List<ComingSoonDataResult> tenseDaramas,
      List<ComingSoonDataResult> southIndianCinema,
      List<EveryoneWatchingDataResult> topTenTvshows,
      bool iserror,
      bool isloading});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataID = null,
    Object? homeMainImage = null,
    Object? releasedPYMovies = null,
    Object? trendingNowMovies = null,
    Object? tenseDaramas = null,
    Object? southIndianCinema = null,
    Object? topTenTvshows = null,
    Object? iserror = null,
    Object? isloading = null,
  }) {
    return _then(_$_HomeState(
      dataID: null == dataID
          ? _value.dataID
          : dataID // ignore: cast_nullable_to_non_nullable
              as String,
      homeMainImage: null == homeMainImage
          ? _value._homeMainImage
          : homeMainImage // ignore: cast_nullable_to_non_nullable
              as List<DownloadsResult>,
      releasedPYMovies: null == releasedPYMovies
          ? _value._releasedPYMovies
          : releasedPYMovies // ignore: cast_nullable_to_non_nullable
              as List<ComingSoonDataResult>,
      trendingNowMovies: null == trendingNowMovies
          ? _value._trendingNowMovies
          : trendingNowMovies // ignore: cast_nullable_to_non_nullable
              as List<ComingSoonDataResult>,
      tenseDaramas: null == tenseDaramas
          ? _value._tenseDaramas
          : tenseDaramas // ignore: cast_nullable_to_non_nullable
              as List<ComingSoonDataResult>,
      southIndianCinema: null == southIndianCinema
          ? _value._southIndianCinema
          : southIndianCinema // ignore: cast_nullable_to_non_nullable
              as List<ComingSoonDataResult>,
      topTenTvshows: null == topTenTvshows
          ? _value._topTenTvshows
          : topTenTvshows // ignore: cast_nullable_to_non_nullable
              as List<EveryoneWatchingDataResult>,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.dataID,
      required final List<DownloadsResult> homeMainImage,
      required final List<ComingSoonDataResult> releasedPYMovies,
      required final List<ComingSoonDataResult> trendingNowMovies,
      required final List<ComingSoonDataResult> tenseDaramas,
      required final List<ComingSoonDataResult> southIndianCinema,
      required final List<EveryoneWatchingDataResult> topTenTvshows,
      required this.iserror,
      required this.isloading})
      : _homeMainImage = homeMainImage,
        _releasedPYMovies = releasedPYMovies,
        _trendingNowMovies = trendingNowMovies,
        _tenseDaramas = tenseDaramas,
        _southIndianCinema = southIndianCinema,
        _topTenTvshows = topTenTvshows;

  @override
  final String dataID;
  final List<DownloadsResult> _homeMainImage;
  @override
  List<DownloadsResult> get homeMainImage {
    if (_homeMainImage is EqualUnmodifiableListView) return _homeMainImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeMainImage);
  }

  final List<ComingSoonDataResult> _releasedPYMovies;
  @override
  List<ComingSoonDataResult> get releasedPYMovies {
    if (_releasedPYMovies is EqualUnmodifiableListView)
      return _releasedPYMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_releasedPYMovies);
  }

  final List<ComingSoonDataResult> _trendingNowMovies;
  @override
  List<ComingSoonDataResult> get trendingNowMovies {
    if (_trendingNowMovies is EqualUnmodifiableListView)
      return _trendingNowMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingNowMovies);
  }

  final List<ComingSoonDataResult> _tenseDaramas;
  @override
  List<ComingSoonDataResult> get tenseDaramas {
    if (_tenseDaramas is EqualUnmodifiableListView) return _tenseDaramas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDaramas);
  }

  final List<ComingSoonDataResult> _southIndianCinema;
  @override
  List<ComingSoonDataResult> get southIndianCinema {
    if (_southIndianCinema is EqualUnmodifiableListView)
      return _southIndianCinema;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southIndianCinema);
  }

  final List<EveryoneWatchingDataResult> _topTenTvshows;
  @override
  List<EveryoneWatchingDataResult> get topTenTvshows {
    if (_topTenTvshows is EqualUnmodifiableListView) return _topTenTvshows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTenTvshows);
  }

  @override
  final bool iserror;
  @override
  final bool isloading;

  @override
  String toString() {
    return 'HomeState(dataID: $dataID, homeMainImage: $homeMainImage, releasedPYMovies: $releasedPYMovies, trendingNowMovies: $trendingNowMovies, tenseDaramas: $tenseDaramas, southIndianCinema: $southIndianCinema, topTenTvshows: $topTenTvshows, iserror: $iserror, isloading: $isloading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.dataID, dataID) || other.dataID == dataID) &&
            const DeepCollectionEquality()
                .equals(other._homeMainImage, _homeMainImage) &&
            const DeepCollectionEquality()
                .equals(other._releasedPYMovies, _releasedPYMovies) &&
            const DeepCollectionEquality()
                .equals(other._trendingNowMovies, _trendingNowMovies) &&
            const DeepCollectionEquality()
                .equals(other._tenseDaramas, _tenseDaramas) &&
            const DeepCollectionEquality()
                .equals(other._southIndianCinema, _southIndianCinema) &&
            const DeepCollectionEquality()
                .equals(other._topTenTvshows, _topTenTvshows) &&
            (identical(other.iserror, iserror) || other.iserror == iserror) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dataID,
      const DeepCollectionEquality().hash(_homeMainImage),
      const DeepCollectionEquality().hash(_releasedPYMovies),
      const DeepCollectionEquality().hash(_trendingNowMovies),
      const DeepCollectionEquality().hash(_tenseDaramas),
      const DeepCollectionEquality().hash(_southIndianCinema),
      const DeepCollectionEquality().hash(_topTenTvshows),
      iserror,
      isloading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final String dataID,
      required final List<DownloadsResult> homeMainImage,
      required final List<ComingSoonDataResult> releasedPYMovies,
      required final List<ComingSoonDataResult> trendingNowMovies,
      required final List<ComingSoonDataResult> tenseDaramas,
      required final List<ComingSoonDataResult> southIndianCinema,
      required final List<EveryoneWatchingDataResult> topTenTvshows,
      required final bool iserror,
      required final bool isloading}) = _$_HomeState;

  @override
  String get dataID;
  @override
  List<DownloadsResult> get homeMainImage;
  @override
  List<ComingSoonDataResult> get releasedPYMovies;
  @override
  List<ComingSoonDataResult> get trendingNowMovies;
  @override
  List<ComingSoonDataResult> get tenseDaramas;
  @override
  List<ComingSoonDataResult> get southIndianCinema;
  @override
  List<EveryoneWatchingDataResult> get topTenTvshows;
  @override
  bool get iserror;
  @override
  bool get isloading;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
