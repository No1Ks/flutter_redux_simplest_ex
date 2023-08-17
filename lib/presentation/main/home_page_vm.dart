part of 'home_page.dart';

class _HomePageViewModel extends BaseViewModel {
  late final int counter;
  late final Color buttonColor;

  _HomePageViewModel(super.store) {
    counter = store.state.appState.counter;
    buttonColor = store.state.appState.buttonColor;
  }

  @override
  List<Object?> get props => [
        counter,
        buttonColor,
      ];

  void incrementCounter() => store.dispatch(const IncrementAction());
}
