part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResultData> searchResultList,
    required List<DownloadsResult> downloadResultList,
    required bool isloading,
    required bool iserror,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
      searchResultList: [],
      downloadResultList: [],
      isloading: false,
      iserror: false);
}
