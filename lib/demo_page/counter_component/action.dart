import 'package:fish_redux/fish_redux.dart';

enum CounterAction { update }

class CounterActionCreator {
  static Action updateCounterAction(int value) {
    return Action(CounterAction.update, payload: value);
  }
}
