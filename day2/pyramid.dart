// for문을 사용하여 10줄의 피라미드 만들기
void main() {
  int maximum = 10;
  for (var i = 1; i <= maximum; i++) {
    int emptyCnt = maximum - i;
    int starCnt = i * 2 - 1;

    print(' ' * emptyCnt + "*" * starCnt);
  }
}
