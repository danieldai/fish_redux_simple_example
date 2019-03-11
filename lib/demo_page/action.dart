import 'package:fish_redux/fish_redux.dart';

import 'counter_component/component.dart';

enum PageAction { initCounter }

class PageActionCreator {
  static Action initCounterAction(CounterState counterState) {
    return Action(PageAction.initCounter, payload: counterState);
  }
}
