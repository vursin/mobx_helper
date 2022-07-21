import 'package:mobx/mobx.dart';

extension ObservableCallExtension<T> on Observable<T> {
  T call([T? newValue]) {
    if (newValue == null) return value;

    runInAction(() => value = newValue);
    return value;
  }
}

extension ObservableFutureExtensionAsObs<T> on Future<T> {
  ObservableFuture<T> get asObs => ObservableFuture<T>(this);
}

extension ObservableListExtensionAsObs<T> on List<T> {
  ObservableList<T> get asObs => ObservableList<T>.of(this);
}

extension ObservableMapExtensionAsObs<K, V> on Map<K, V> {
  ObservableMap<K, V> get asObs => ObservableMap<K, V>.of(this);
}

extension ObservableSetExtensionAsObs<T> on Set<T> {
  ObservableSet<T> get asObs => ObservableSet<T>.of(this);
}

extension ObservableStreamExtensionAsObs<T> on Stream<T> {
  ObservableStream<T> get asObs => ObservableStream<T>(this);
}

extension IntExtensionAsObs on int {
  Observable<int> get asObs => Observable(this);
}

extension BoolExtensionAsObs on bool {
  Observable<bool> get asObs => Observable(this);
}

extension DoubleExtensionAsObs on double {
  Observable<double> get asObs => Observable(this);
}

extension StringExtensionAsObs on String {
  Observable<String> get asObs => Observable(this);
}
