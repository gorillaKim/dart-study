Iterable<int> countdown(int from) sync* {
  while (from > 0) {
    yield from--;
  }
}

Iterable<int> recursiveCountdown(int from) sync* {
  if (from > 0) {
    yield from;
    yield* recursiveCountdown(from - 1);
  }
}

void main() {
  print(recursiveCountdown(3));
  for (var value in countdown(3)) {
    print(value);
  }
}
