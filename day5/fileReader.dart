import 'dart:async';
import 'dart:io';

Future<void> readFileAndPrintContent(String filePath) async {
  try {
    // 파일을 비동기적으로 읽기
    File file = File(filePath);
    String contents = await file.readAsString();

    // 읽은 내용 출력
    print('File contents:');
    print(contents);
  } catch (e) {
    // 오류 처리
    print('Error reading file: $e');
  }
}

void main() {
  String filePath = 'day5/example.txt'; // 읽을 파일 경로
  print('Reading file $filePath...');
  readFileAndPrintContent(filePath)
      .then((_) => print('File reading completed.')) // 작업 완료 시 메시지 출력
      .catchError((error) => print('Error occurred: $error')); // 오류 처리
  print('File reading request sent!');
}
