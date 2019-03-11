import 'package:fish_redux/fish_redux.dart';

import 'counter_component/component.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class DemoPage extends Page<PageState, Map<String, dynamic>> {
  DemoPage()
      : super(
          initState: initState,
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<PageState>(
              slots: <String, Dependent<PageState>>{
                'counter': CounterConnector() + CounterComponent()
              }),
          middlewares: <Middleware<PageState>>[
            logMiddleware(tag: 'DemoPage'),
          ],
        );
}
