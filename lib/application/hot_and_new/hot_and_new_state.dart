part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState(
      {required List<ComingSoonDataResult> comingSoondataList,
      required List<EveryoneWatchingDataResult> everyoneWatchingList,
      required bool isloading,
      required bool isError}) = _HotAndNewState;

  factory HotAndNewState.initial() => const HotAndNewState(
      comingSoondataList: [],
      everyoneWatchingList: [],
      isloading: false,
      isError: false);
}
