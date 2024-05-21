void main() {

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  //Modificar elementos de una Lista/Arreglo - Vector
  numeros[3] = 20;
  numeros[9] = 30;
  print(numeros);

  //Propiedad length - Tamaño
  print("Tamaño de la Lista: ${numeros.length}");
  print("Ultimo elemento: ${numeros[numeros.length - 1]}");
  print("Ultimo elemento: ${numeros.last}");

  //Metodos ADD() - REMOVE() - REMOVEAT()
  List<int> numeros2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(numeros2);
  numeros2.remove(5);     // Elimina la pocision y reordena la lista. el numeroPara eliminar la pocision de un elemento de una lista.
  print(numeros2);
  print(numeros2[4]);
  numeros2.removeAt(1);   //Elimina la posicion y continua con la lista.     //Amboas tienen el mismo resultado pero s ehace de dos formas
  print(numeros2);
}