import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/widgets/states/stateful_listview_state.dart';

class StatefulListviewModel extends StateNotifier<StatefulListviewState> {
  final Future<List<dynamic>> Function({int page}) loadData;

  /// pagination is out of state for simplicity and how app works
  /// if more functionality comes around then lets move this to state
  // TODO: double check this page variable and decide if it should stay here
  int _page = 1;
  StatefulListviewModel(this.loadData)
      : super(const StatefulListviewState.init());

  initLoad() async {
    // VisibilityDetector event calls this twice before state actually changes
    // so we need these few lines below to do check that we are runnig with right state...

    // TODO: replace VisibilityDetector with something else and clean this method
    var canContinue = true;
    state.maybeWhen(init: () {
      // do nothing
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

  loadMoreData() async {
    _page++;
    var currList =
        state.maybeWhen(noError: (list) => list, orElse: () => <dynamic>[]);
    state = StatefulListviewState.loadingMore(currList);
    try {
      var stuff = await loadData(page: _page);
      currList.addAll(stuff);
      state = StatefulListviewState.noError(currList);
    } catch (error) {
      state = StatefulListviewState.error(error.toString());
    }
  }
}
