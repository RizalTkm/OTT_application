part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState(
      {required bool isloading,
      required List<DownloadsResult> downloadimages,
      required bool iserror}) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
        isloading: false, iserror: false, downloadimages: []);
  }
}
