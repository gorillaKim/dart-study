import 'dart:core';

abstract class Calculator<T> {
  T r = 0 as T;

  T add(T a);
}

class StringCalculator implements Calculator<String> {
  String r = '';
  String add(String a) {
    r = '$r$a';
    return r;
  }
}

class NumberCalculator implements Calculator<int> {
  int r = 0;
  int add(int a) {
    r = r + a;
    return r;
  }
}

class ArrayCalculator implements Calculator<List> {
  List r = [];
  List add(
    List a,
  ) {
    r = [...r, ...a];
    return r;
  }
}

void main() {
  Calculator numberObj = NumberCalculator();
  Calculator stringObj = StringCalculator();
  Calculator listObj = ArrayCalculator();
  var s = [1, 2, 3];

  numberObj
    ..add(1)
    ..add(1)
    ..add(1)
    ..add(1)
    ..add(1);

  stringObj
    ..add('a')
    ..add('b')
    ..add('c')
    ..add('d')
    ..add('e');

  listObj
    ..add(['a'])
    ..add(['b'])
    ..add(['c'])
    ..add(['d'])
    ..add(['e']);

  print(numberObj.r);
  print(stringObj.r);
  print(listObj.r);
}
