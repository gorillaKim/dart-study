/*  
 * named 매개변수를 만들때는 중괄호를 사용한다 "{}"
 *   - 필수값을 표시할때는 required 를 붙여 명시해준다.
 *   - 옵셔널 값은 타입뒤에 "?" 를 붙이거나 초깃값을 할당해줌으로서 명시가 가능하다.
 * 중괄호 없이 함수를 만들게 되면 javascript 와 마찬가지로 넣어주는 argument 순서에 따라 값이 할당되어진다.
 * 이때 선언된 argument 들은 자동으로 필수값이 되어진다. 
 * 중괄호 없이 옵셔널 argument 를 만들고 싶을때는 대괄호 "[]" 를 사용한다.
 *   - 이때 대괄호는 argument 순서상 가장 마지막에만 위치할수 있다.
*/

void printTitle(String title) {
  String hr = "=" * 5;
  print(hr + " $title " + hr);
}

String introduce1({String name = "김영환", required int age}) {
  return '$name은(는) $age세 입니다.';
}

String introduce2(int age, [String name = "김영환"]) {
  return '$name은(는) $age세 입니다.';
}

int factorial(int number) {
  if (number < 1) {
    return 1;
  }
  return number * factorial(number - 1);
}

void main() {
  printTitle("named parameter");
  print(introduce1(age: 3));
  print(introduce1(name: '임한민', age: 3));
  print(introduce1(name: '남승철', age: 3));
  printTitle("unnamed parameter");
  print(introduce2(3));
  print(introduce2(3, '임한민'));
  print(introduce2(3, '남승철'));
  printTitle("recursive function");
  print(factorial(3));
  print(factorial(4));
  print(factorial(5));
}
