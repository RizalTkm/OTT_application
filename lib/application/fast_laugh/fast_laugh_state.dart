part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState(
      {required List<DownloadsResult> vidoeListimage,
      required bool isloading,
      required bool iserror}) = _Initial;

  factory FastLaughState.initital() => const FastLaughState(
        vidoeListimage: [],
        isloading: true,
        iserror: false,
      );
}
