import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stateful_listview_state.freezed.dart';

@freezed
class StatefulListviewState with _$StatefulListviewState {
  /// starting state, does nothing, just waits for trigger to load first page
  const factory StatefulListviewState.init() = _Init;

  /// state for loading first page
  const factory StatefulListviewState.loading() = _Loading;

  /// if at any point we receive error, we go to this state
  const factory StatefulListviewState.error(String message) = _Error;

  /// this state is used if we have received something (even empty list) and we are not loading anything
  const factory StatefulListviewState.noError(List<dynamic> list) = _NoError;

  /// same as NoError but in this state we are also loading next page
  const factory StatefulListviewState.loadingMore(List<dynamic> oldList) =
      _LoadingMore;

  /// states move like following:
  /// starting state is INIT
  /// from INIT to LOADING to
  ///     a) ERROR(String message) (will be stuck here forever) or
  ///     b) NOERROR(List<dynamic> list)
  /// from NOERROR to LOADINGMORE(List<dynamic> oldList) to
  ///     a) ERROR(String message) (will be stuck here forever) or
  ///     b) NOERROR(List<dynamic> list)
}
