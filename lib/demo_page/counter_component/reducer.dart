import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CounterState> buildReducer() {
  return asReducer(
    <Object, Reducer<CounterState>>{CounterAction.update: _updateCounter},
  );
}

CounterState _updateCounter(CounterState state, Action action) {
  final int newValue = action.payload ?? 0;
  final CounterState newState = state.clone();
  newState.counter = newValue;
  return newState;
}
