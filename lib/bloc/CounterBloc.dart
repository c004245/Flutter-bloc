import 'package:rxdart/rxdart.dart';

//get business, data logic
class CounterBloc {
  int _count = 0;

  final _countSubject = BehaviorSubject.seeded(0);

  void addCounter() {
    _count++;
    _countSubject.add(_count);
  }

  Stream<int> get count$ => _countSubject.stream;
}