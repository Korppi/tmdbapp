import 'package:freezed_annotation/freezed_annotation.dart';

part 'stateful_listview_state.freezed.dart';

@freezed
class StatefulListviewState with _$StatefulListviewState {
  const factory StatefulListviewState.loading() = _Loading;
  const factory StatefulListviewState.error(String message) = _Error;
  const factory StatefulListviewState.init() = _Init;
  const factory StatefulListviewState.noError(List<dynamic> list) = _NoError;
}
