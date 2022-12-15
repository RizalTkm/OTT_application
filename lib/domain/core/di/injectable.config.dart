// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:movie_application/application/downloads/downloads_bloc.dart'
    as _i10;
import 'package:movie_application/application/fast_laugh/fast_laugh_bloc.dart'
    as _i5;
import 'package:movie_application/application/home/home_bloc.dart' as _i11;
import 'package:movie_application/application/hot_and_new/hot_and_new_bloc.dart'
    as _i12;
import 'package:movie_application/application/search/search_bloc.dart' as _i13;
import 'package:movie_application/domain/downloads/repository/downloads_repository.dart'
    as _i3;
import 'package:movie_application/domain/new_hot/repository/hotandNew_repo.dart'
    as _i6;
import 'package:movie_application/domain/search/search_repository/search_repository.dart'
    as _i8;
import 'package:movie_application/infrastructure/downloads/repository_imply/downloads_repo_imply.dart'
    as _i4;
import 'package:movie_application/infrastructure/hotAndNew_repo_imply/hotAndNew_repo_imply.dart'
    as _i7;
import 'package:movie_application/infrastructure/search/search_repo_imply/search_repo_imply.dart'
    as _i9;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DownloadsRepository>(() => _i4.DownloadsRepoImply());
    gh.factory<_i5.FastLaughBloc>(
        () => _i5.FastLaughBloc(gh<_i3.DownloadsRepository>()));
    gh.lazySingleton<_i6.HotAndNewRepository>(() => _i7.HotAndNewRepoImply());
    gh.lazySingleton<_i8.SearchRepository>(() => _i9.SearchRepoImply());
    gh.factory<_i10.DownloadsBloc>(
        () => _i10.DownloadsBloc(gh<_i3.DownloadsRepository>()));
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(
          gh<_i6.HotAndNewRepository>(),
          gh<_i3.DownloadsRepository>(),
        ));
    gh.factory<_i12.HotAndNewBloc>(
        () => _i12.HotAndNewBloc(gh<_i6.HotAndNewRepository>()));
    gh.factory<_i13.SearchBloc>(() => _i13.SearchBloc(
          gh<_i3.DownloadsRepository>(),
          gh<_i8.SearchRepository>(),
        ));
    return this;
  }
}
