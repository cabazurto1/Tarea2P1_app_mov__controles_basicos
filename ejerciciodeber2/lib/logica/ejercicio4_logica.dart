Map<int, int> factorizar(int n) {
  if (n <= 1) return {};
  Map<int, int> factores = {};
  for (int i = 2; i <= n ~/ i; i++) {
    while (n % i == 0) {
      factores[i] = (factores[i] ?? 0) + 1;
      n ~/= i;
    }
  }
  if (n > 1) factores[n] = 1;
  return factores;
}
