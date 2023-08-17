import 'package:flutter/material.dart';

class ReduxAppState {
  final AppState appState;

  const ReduxAppState({
    this.appState = const AppState(),
  });
}

class AppState {
  final int counter;
  final Color buttonColor;

  const AppState({
    this.counter = 0,
    this.buttonColor = Colors.deepPurple,
  });
}
