import 'package:equatable/equatable.dart';
import 'package:flutter_redux_simplest_ex/redux/state.dart';
import 'package:redux/redux.dart';

abstract class BaseViewModel extends Equatable {
  final Store<ReduxAppState> store;

  const BaseViewModel(this.store);

  @override
  List<Object?> get props => [];
}
