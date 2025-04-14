// Clase base: Calculadora

class Calculadora {
  // Método que suma dos números y devuelve el resultado
  double sumar(double a, double b) => a + b;

  // Método que resta dos números y devuelve el resultado
  double restar(double a, double b) => a - b;

  // Método que multiplica dos números y devuelve el resultado
  double multiplicar(double a, double b) => a * b;

  // Método que divide dos números, con verificación de división por cero
  double dividir(double a, double b) {
    if (b == 0) throw Exception("No se puede dividir entre cero.");
    return a / b;
  }
}

// Clase hija: CalculadoraFactorial
// Hereda de Calculadora

class CalculadoraFactorial extends Calculadora {
  // Método para calcular el factorial de un número entero positivo
  int factorial(int n) {
    if (n < 0)
      throw Exception("El factorial no está definido para números negativos.");
    int resultado = 1;
    for (int i = 1; i <= n; i++) {
      resultado *= i;
    }
    return resultado;
  }
}

// Función principal main

void main() {
  // Creamos una instancia de la clase CalculadoraFactorial (que también tiene suma, resta, etc.)
  var calc = CalculadoraFactorial();

  // Usamos los métodos de la clase base
  print('Suma: ${calc.sumar(10, 2)}');
  print('Resta: ${calc.restar(10, 2)}');
  print('Multiplicación: ${calc.multiplicar(10, 2)}');
  print('División: ${calc.dividir(10, 2)}');

  // Usamos el método de la clase hija
  print('Factorial de 5: ${calc.factorial(5)}');
}
