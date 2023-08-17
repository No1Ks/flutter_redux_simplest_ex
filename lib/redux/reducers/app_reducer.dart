import 'package:flutter/material.dart';
import 'package:flutter_redux_simplest_ex/redux/actions/main_actions.dart';
import 'package:redux/redux.dart';

final Reducer<int> counterReducer =
    TypedReducer<int, IncrementAction>((state, action) => ++state);

final Reducer<Color> buttonColorReducer =
    TypedReducer<Color, ChangeButtonColorAction>(
        (state, action) => action.color);
