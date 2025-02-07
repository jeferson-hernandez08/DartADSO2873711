void main () {

  // int a, b, c;
  // a = 5;
  // b = 3;
  // c = a + b;
  // print("La suma es $c");
  // a = 8;
  // b = 2;
  // c = a + b;
  // print("La suma es $c");
  //*****************************/
  sumar();                                          //Ejercicio #1
  sumarEficiente(4, 3);                             //Ejercicio #2
  sumarEficiente(8, 10);
  sumarEficiente(7, 2);
  saludar("posada", "M");                           //Ejercicio #3
  saludar("maria", "F");
  List<String> frutas = ["Mango", "Pera", "Uva"];   //Ejercicio #4
  List<String> nombres = ["Juan", "Ana", "Eva"];
  mostrarLista(frutas, "Fruta");
  print("*" * 30);
  mostrarLista(nombres, "Nombre");
  double multi = multiplicacion(3, 5);              //Ejercicio #5
  print("La multiplicacion es: $multi");
}

//Ejercicio #1
void sumar() {   
  int a, b, c;
  a = 5;
  b = 3;
  c = a + b;
  print("La suma es $c");
}

//Ejercicio #2
void sumarEficiente(int num1, int num2) {  
  int suma;
  suma = num1 + num2;
  print("La suma es $suma");
}

//Ejercicio #3
void saludar(String nombre, String genero) {      
  if (genero == "M") {
    print("Hola querido $nombre");
  }
  else {
    print("Hola querida $nombre");
  }
}

//Ejercicio #4
void mostrarLista(List<String> lista, String nombre) {      
  for (var i = 0; i < lista.length; i++) {
    print("$nombre #${i+1} ${lista[i]}");  
  }
}

//Ejercicio #5
double multiplicacion(double num1, double num2) {    
  double multiplicacion = num1 * num2;
  return multiplicacion;
}

/* 
  QUE ES EL VOID:  
  El void en tu código es un tipo de retorno en el lenguaje de programación Dart (y en otros lenguajes como C, 
  C++, Java, etc.).

  Cuando ves void main(), significa que la función main no va a devolver ningún valor. Es decir, la función main 
  es un punto de entrada al programa y su propósito es ejecutar el código dentro de ella, pero no devuelve nada 
  cuando termina su ejecución.

  En otras palabras:

  void: Indica que no se espera ningún valor de retorno de la función.
  main(): Es el nombre de la función principal que se ejecuta al iniciar el programa.
  En resumen, void se usa para especificar que una función no devuelve ningún valor. En el caso de tu código, 
  el programa se ejecuta y simplemente imprime los mensajes en la consola, sin retornar ningún valor.

  *****************************************************************************************************************
  La principal diferencia entre las dos funciones es el tipo de retorno y el propósito de cada una. Aquí están 
  los detalles:

  1. Tipo de retorno (void vs int o void):

  En el caso de la función sumar(), estás utilizando void como tipo de retorno, lo que significa que esta función 
  no devuelve un valor. En lugar de eso, solo realiza una operación (la suma) y muestra el resultado en la consola
  mediante print.

  En un caso común de una función que devuelve un valor, se especificaría un tipo de retorno como int, double, 
  etc., dependiendo de lo que la función vaya a retornar. Por ejemplo, si tu función quisiera devolver el resultado 
  de la suma, debería ser algo así:

  int sumar() {
    int a = 5;
    int b = 3;
    int c = a + b;
    return c;  // Devuelve el resultado de la suma
  }

  En este caso, la función sumar() devolvería un valor entero (int), que sería el resultado de a + b. Este valor podría luego ser 
  usado o impreso en otro lugar del programa.

  2. El propósito:

  void sumar(): La función no devuelve nada y solo realiza una acción (suma) y la imprime en consola. Es útil si 
  solo deseas ejecutar una operación pero no necesitas usar el valor resultante después de la ejecución.

  int sumar(): Si cambiamos el tipo de retorno a int, la función sería útil cuando necesites usar el resultado de 
  la suma en algún otro cálculo o operación en el futuro. Podrías llamar a esta función y asignar su resultado a 
  una variable, por ejemplo:

  int resultado = sumar();  // almacena el valor retornado en una variable

  Resumen de las diferencias:
  void sumar() no devuelve nada, solo imprime el resultado de la suma.
  int sumar() devuelve un valor (el resultado de la suma) y permite que ese valor sea utilizado en otras partes 
  del programa.

*/

/*  
  Funciones
  Una función es un bloque de código reutilizable que realiza una tarea específica. Puede recibir parámetros 
  (entradas) y puede devolver un valor (salida). Se define fuera de una clase y se puede invocar por su nombre.

  Ejemplo de una función en Dart:

  int sumar(int a, int b) {
    return a + b;
  }

  void main() {
    print(sumar(5, 3)); // Llama a la función sumar y muestra 8
  }

  En este caso:

  sumar es la función.
  Toma dos parámetros: a y b.
  Devuelve el resultado de la suma de esos dos parámetros.

  Métodos
  Un método es una función que está definida dentro de una clase. Los métodos pueden acceder a los atributos de 
  la clase y pueden ser llamados a través de instancias de esa clase. Los métodos pueden ser estáticos (se llaman
  sin crear una instancia de la clase) o no estáticos (se llaman sobre una instancia de la clase).

  Ejemplo de un método en Dart:

  class Calculadora {
    // Método no estático
    int sumar(int a, int b) {
      return a + b;
    }
  }

  void main() {
    var calc = Calculadora(); // Crear una instancia de la clase Calculadora
    print(calc.sumar(5, 3)); // Llama al método sumar en la instancia de la clase
  }

  En este caso:

  sumar es un método de la clase Calculadora.
  Se crea una instancia de la clase Calculadora llamada calc, y luego se llama al método sumar a través de esa instancia.

  Diferencias clave:
  Funciones: Están fuera de cualquier clase y pueden ser llamadas directamente con su nombre.
  Métodos: Están dentro de una clase y se llaman a través de una instancia de la clase (o directamente si es un método estático).



*/
