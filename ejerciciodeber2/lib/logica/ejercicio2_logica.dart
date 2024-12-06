double factorial(int n) {
  if (n < 0) throw ArgumentError('No existe factorial para números negativos');
  double result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}
