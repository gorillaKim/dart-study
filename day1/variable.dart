void main() {
  /*
      모든 변수는 객체(object)이며 Object 클래스를 상속한다.
      다트의 타입은 자바와 달리 원시(primitive) 타입이 없고 모두 참조(reference) 타입이다.
      어디에서나 변수 선언하고 쓸 수 있다.
      다트는 사운드 타입(Sound typing) 언어이다.
      컴파일 시간 또는 실행 시간에 타입 제한 위반 체크
        - 서로 다른 타입 사이의 변환이 금지  
   */
  print(true.runtimeType); // 결과 bool
  print(1.runtimeType); // 결과 int
  print(3.14.runtimeType); // 결과 double
  print('Hi'.runtimeType); // 결과 String
  print(null.runtimeType); // 결과 Null

  // 타입 애노테이션(annotation): 변수 선언에 명시한 타입으로 결정한다.
  int number1 = 10;
  print(number1.runtimeType);
  // 타입 추론(inference): 변수에 대입되는 값을 통해서 묵시적으로 변수의 타입을 결정한다.
  var number2 = 10;
  print(number2.runtimeType);

  // 초기값이 무조건 있는 변수를 선언한다.
  String name1 = "홍길동";
  print('name1:${name1}, type:${name1.runtimeType}');
  // Null 값이 들어 갈 수 있다고 변수를 선언한다.
  String? name2;
  print('name2:${name2}, type:${name2.runtimeType}');

  // 절대 Null 값일 수가 없다고 알려주며 변수를 사용한다.
  int? age = 1;
  age = age! + 1;
  print(age);

  const list = [1, 2, 3];
  var list2 = [...list, 4, 5, 6];
  print(list2);
}
