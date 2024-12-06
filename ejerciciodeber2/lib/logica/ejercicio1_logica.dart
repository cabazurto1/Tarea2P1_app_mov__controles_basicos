List<String> tablaASCII() {
  List<String> tabla = [];
  for (int i = 32; i <= 126; i++) {
    tabla.add('Código: $i -> Caracter: ${String.fromCharCode(i)}');
  }
  return tabla;
}
