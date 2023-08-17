import 'package:flutter_redux_simplest_ex/redux/middlewares/main/main_middleware.dart';
import 'package:flutter_redux_simplest_ex/redux/reducers/main_reducer.dart';
import 'package:flutter_redux_simplest_ex/redux/state.dart';
import 'package:redux/redux.dart' show Middleware, Store, combineReducers;
import 'package:redux_logging/redux_logging.dart';

Store<ReduxAppState> getStore() {
  final reducers = combineReducers<ReduxAppState>([rootReducer]);

  final middleware = <Middleware<ReduxAppState>>[
    mainMiddleware,
    LoggingMiddleware.printer(),
  ];

  final store = Store<ReduxAppState>(
    reducers,
    initialState: const ReduxAppState(),
    middleware: middleware,
  );

  return store;
}
