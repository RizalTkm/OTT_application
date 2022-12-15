// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String moviename) searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String moviename)? searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String moviename)? searchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initialize value) initialize,
    required TResult Function(searchMovies value) searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initialize value)? initialize,
    TResult? Function(searchMovies value)? searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialize value)? initialize,
    TResult Function(searchMovies value)? searchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

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
    extends _$SearchEventCopyWithImpl<$Res, _$initialize>
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
    return 'SearchEvent.initialize()';
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
    required TResult Function(String moviename) searchMovies,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String moviename)? searchMovies,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String moviename)? searchMovies,
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
    required TResult Function(searchMovies value) searchMovies,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initialize value)? initialize,
    TResult? Function(searchMovies value)? searchMovies,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialize value)? initialize,
    TResult Function(searchMovies value)? searchMovies,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class initialize implements SearchEvent {
  const factory initialize() = _$initialize;
}

/// @nodoc
abstract class _$$searchMoviesCopyWith<$Res> {
  factory _$$searchMoviesCopyWith(
          _$searchMovies value, $Res Function(_$searchMovies) then) =
      __$$searchMoviesCopyWithImpl<$Res>;
  @useResult
  $Res call({String moviename});
}

/// @nodoc
class __$$searchMoviesCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$searchMovies>
    implements _$$searchMoviesCopyWith<$Res> {
  __$$searchMoviesCopyWithImpl(
      _$searchMovies _value, $Res Function(_$searchMovies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviename = null,
  }) {
    return _then(_$searchMovies(
      moviename: null == moviename
          ? _value.moviename
          : moviename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$searchMovies implements searchMovies {
  const _$searchMovies({required this.moviename});

  @override
  final String moviename;

  @override
  String toString() {
    return 'SearchEvent.searchMovies(moviename: $moviename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$searchMovies &&
            (identical(other.moviename, moviename) ||
                other.moviename == moviename));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moviename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$searchMoviesCopyWith<_$searchMovies> get copyWith =>
      __$$searchMoviesCopyWithImpl<_$searchMovies>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String moviename) searchMovies,
  }) {
    return searchMovies(moviename);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String moviename)? searchMovies,
  }) {
    return searchMovies?.call(moviename);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String moviename)? searchMovies,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies(moviename);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initialize value) initialize,
    required TResult Function(searchMovies value) searchMovies,
  }) {
    return searchMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initialize value)? initialize,
    TResult? Function(searchMovies value)? searchMovies,
  }) {
    return searchMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initialize value)? initialize,
    TResult Function(searchMovies value)? searchMovies,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies(this);
    }
    return orElse();
  }
}

abstract class searchMovies implements SearchEvent {
  const factory searchMovies({required final String moviename}) =
      _$searchMovies;

  String get moviename;
  @JsonKey(ignore: true)
  _$$searchMoviesCopyWith<_$searchMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<SearchResultData> get searchResultList =>
      throw _privateConstructorUsedError;
  List<DownloadsResult> get downloadResultList =>
      throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  bool get iserror => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<SearchResultData> searchResultList,
      List<DownloadsResult> downloadResultList,
      bool isloading,
      bool iserror});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResultList = null,
    Object? downloadResultList = null,
    Object? isloading = null,
    Object? iserror = null,
  }) {
    return _then(_value.copyWith(
      searchResultList: null == searchResultList
          ? _value.searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      downloadResultList: null == downloadResultList
          ? _value.downloadResultList
          : downloadResultList // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SearchResultData> searchResultList,
      List<DownloadsResult> downloadResultList,
      bool isloading,
      bool iserror});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResultList = null,
    Object? downloadResultList = null,
    Object? isloading = null,
    Object? iserror = null,
  }) {
    return _then(_$_SearchState(
      searchResultList: null == searchResultList
          ? _value._searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      downloadResultList: null == downloadResultList
          ? _value._downloadResultList
          : downloadResultList // ignore: cast_nullable_to_non_nullable
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

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required final List<SearchResultData> searchResultList,
      required final List<DownloadsResult> downloadResultList,
      required this.isloading,
      required this.iserror})
      : _searchResultList = searchResultList,
        _downloadResultList = downloadResultList;

  final List<SearchResultData> _searchResultList;
  @override
  List<SearchResultData> get searchResultList {
    if (_searchResultList is EqualUnmodifiableListView)
      return _searchResultList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultList);
  }

  final List<DownloadsResult> _downloadResultList;
  @override
  List<DownloadsResult> get downloadResultList {
    if (_downloadResultList is EqualUnmodifiableListView)
      return _downloadResultList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloadResultList);
  }

  @override
  final bool isloading;
  @override
  final bool iserror;

  @override
  String toString() {
    return 'SearchState(searchResultList: $searchResultList, downloadResultList: $downloadResultList, isloading: $isloading, iserror: $iserror)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other._searchResultList, _searchResultList) &&
            const DeepCollectionEquality()
                .equals(other._downloadResultList, _downloadResultList) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.iserror, iserror) || other.iserror == iserror));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchResultList),
      const DeepCollectionEquality().hash(_downloadResultList),
      isloading,
      iserror);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<SearchResultData> searchResultList,
      required final List<DownloadsResult> downloadResultList,
      required final bool isloading,
      required final bool iserror}) = _$_SearchState;

  @override
  List<SearchResultData> get searchResultList;
  @override
  List<DownloadsResult> get downloadResultList;
  @override
  bool get isloading;
  @override
  bool get iserror;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
