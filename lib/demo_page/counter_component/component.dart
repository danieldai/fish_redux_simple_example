import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';
import 'view.dart';

export 'state.dart';

class CounterComponent extends Component<CounterState> {
  CounterComponent()
      : super(
          view: buildView,
          reducer: buildReducer(),
        );
}
