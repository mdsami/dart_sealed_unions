import 'package:sealed_unions/union_6.dart';

class Union6Third<A, B, C, D, E, F> implements Union6<A, B, C, D, E, F> {
  final C _value;

  Union6Third(this._value);

  @override
  void continued(
    Function(A) continuationFirst,
    Function(B) continuationSecond,
    Function(C) continuationThird,
    Function(D) continuationFourth,
    Function(E) continuationFifth,
    Function(F) continuationSixth,
  ) {
    continuationThird(_value);
  }

  @override
  R join<R>(
    R Function(A) mapFirst,
    R Function(B) mapSecond,
    R Function(C) mapThird,
    R Function(D) mapFourth,
    R Function(E) mapFifth,
    R Function(F) mapSixth,
  ) {
    return mapThird(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union6Third &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
