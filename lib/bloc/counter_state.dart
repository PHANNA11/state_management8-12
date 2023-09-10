part of 'counter_bloc.dart';

// Super class
@immutable
class CounterState {
  int? count;
  CounterState({this.count});
}

// Sub class
class CounterInitial extends CounterState {
  CounterInitial() : super(count: 6);
}
