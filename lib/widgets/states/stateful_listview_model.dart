import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_state.dart';

class StatefulListviewModel extends StateNotifier<StatefulListviewState> {
  final Future<List<dynamic>> Function({int page}) loadData;
  StatefulListviewModel(this.loadData)
      : super(const StatefulListviewState.init());

  initLoad() async {
    // VisibilityDetector event calls this twice before state actually changes
    // so we need these few lines below to do check that we are runnig with right state...

    // TODO: replace VisibilityDetector with something else and clean this method
    var canContinue = true;
    state.maybeWhen(init: () {
      //
    }, orElse: () {
      canContinue = false;
    });
    if (!canContinue) return;
    state = const StatefulListviewState.loading();
    try {
      var stuff = await loadData();
      state = StatefulListviewState.noError(stuff);
    } catch (error) {
      state = StatefulListviewState.error(error.toString());
    }
  }
}
