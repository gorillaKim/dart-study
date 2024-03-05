import 'dart:async';

// async* 제너레이터 함수로 스트림 생성
Stream<int> countStream(int max) async* {
  for (int i = 0; i < max; i++) {
    print("Delaying...");
    await Future.delayed(Duration(seconds: 1));
    print("Wake up...");
    // 제너레이터는 return이 아닌 yield로 반환
    yield i;
  }
}

// int값을 미래에 약속 받는 비동기 함수
Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;

  // 비동기로 스트림을 읽어서 결과를 모두 합산
  await for (int value in stream) {
    sum += value;
  }
  return sum;
}

void main() async {
  // 정수 0부터 9까지 스트림을 초기화
  Stream<int> stream = countStream(10);

  // 정수의 스트림을 모두 합산
  int sum = await sumStream(stream);

  // 합산 결과 출력
  print(sum); // 45
}
