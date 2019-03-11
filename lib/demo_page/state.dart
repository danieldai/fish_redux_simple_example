import 'package:fish_redux/fish_redux.dart';

import 'counter_component/component.dart';

class PageState implements Cloneable<PageState> {
  CounterState counterState;

  @override
  PageState clone() {
    return PageState()..counterState = counterState;
  }
}

PageState initState(Map<String, dynamic> args) {
  return PageState()..counterState = CounterState();
}

class CounterConnector extends ConnOp<PageState, CounterState> {
  @override
  CounterState get(PageState state) {
    return state.counterState;
  }

  @override
  void set(PageState state, CounterState counterState) {
    state.counterState = counterState;
  }
}
