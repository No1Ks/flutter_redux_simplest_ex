part of 'main_middleware.dart';

void _incrementActionImpl(
  Store<ReduxAppState> store,
  IncrementAction action,
) {
  final color =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1);
  store.dispatch(ChangeButtonColorAction(color));
}
