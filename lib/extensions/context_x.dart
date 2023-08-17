import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_simplest_ex/redux/state.dart';
import 'package:redux/redux.dart';

extension ContextX on BuildContext {
  Store<ReduxAppState> get store => StoreProvider.of<ReduxAppState>(this);
}
