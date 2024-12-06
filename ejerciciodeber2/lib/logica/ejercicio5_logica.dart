List<int> numerosPrimos(int min, int max) {
  List<int> primos = [];
  for (int i = min; i <= max; i++) {
    if (_esPrimo(i)) primos.add(i);
  }
  return primos;
}

bool _esPrimo(int n) {
  if (n < 2) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
