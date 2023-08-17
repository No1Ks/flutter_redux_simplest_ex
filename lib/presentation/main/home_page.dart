import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_simplest_ex/redux/actions/main_actions.dart';
import 'package:flutter_redux_simplest_ex/redux/base_vm.dart';
import 'package:flutter_redux_simplest_ex/redux/state.dart';

part 'home_page_vm.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ReduxAppState, _HomePageViewModel>(
      converter: (store) => _HomePageViewModel(store),
      distinct: true,
      builder: (context, vm) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: vm.buttonColor,
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  vm.counter.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: vm.buttonColor,
            onPressed: vm.incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
