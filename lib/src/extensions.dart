import 'package:mobx/mobx.dart';

extension ObservableCallExtension<T> on Observable<T> {
  T call([T? newValue]) {
    if (newValue == null) return value;

    runInAction(() => value = newValue);
    return value;
  }
}

extension ObservableTExtension<T> on T {
  Observable<T> get asObs {
    return Observable(this);
  }
}
