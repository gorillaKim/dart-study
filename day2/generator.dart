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
  var result = recursiveCountdown(3);
  print(result.runtimeType);
  print([...result]);
  for (var value in countdown(3)) {
    print(value);
  }
}
