import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'counter_component/component.dart';
import 'state.dart';

Reducer<PageState> buildReducer() {
  return asReducer(
    <Object, Reducer<PageState>>{PageAction.initCounter: _init},
  );
}

PageState _init(PageState state, Action action) {
  final CounterState counterState = action.payload ?? new CounterState();
  final PageState newState = state.clone();
  newState.counterState = counterState;
  return newState;
}
