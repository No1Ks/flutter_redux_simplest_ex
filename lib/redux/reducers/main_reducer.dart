import 'package:flutter_redux_simplest_ex/redux/reducers/app_reducer.dart';
import 'package:flutter_redux_simplest_ex/redux/state.dart';
import 'package:redux/redux.dart' show Reducer;

Reducer<ReduxAppState> rootReducer = (ReduxAppState state, action) {
  final appState = state.appState;

  return ReduxAppState(
    appState: AppState(
      counter: counterReducer(
        appState.counter,
        action,
      ),
      buttonColor: buttonColorReducer(
        appState.buttonColor,
        action,
      ),
    ),
  );
};
