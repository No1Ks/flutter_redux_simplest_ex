import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_simplest_ex/presentation/main/home_page.dart';
import 'package:flutter_redux_simplest_ex/redux/state.dart';
import 'package:flutter_redux_simplest_ex/redux/store.dart';
import 'package:redux/redux.dart';

void main() {
  final store = getStore();

  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<ReduxAppState> store;

  const MyApp(this.store, {super.key,});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
