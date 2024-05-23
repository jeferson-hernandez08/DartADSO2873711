import 'dart:io';

void main(List<String> args) {
  //Se define una lista vacia
  List<double> numeros = [];
  List<double> mayoresProm = [];
  int cantNumeros = 10;
  double num, sumaNumeros = 0, promedio;
  //Ciclo para llenar el vector
  for (var i = 0; i < cantNumeros; i++){
    print("Ingrese número #${i+1}");
    num = double.parse(stdin.readLineSync()!);
    numeros.add(num);      //Se ingresa el numero a la lista 
    sumaNumeros += num;
  }
  promedio = sumaNumeros/numeros.length;
  print(numeros);
  print("El promedio es: $promedio");

  // Ciclo para determinar mayores al promedio
  for (var i = 0; i < numeros.length; i++){
    if (numeros[i] > promedio){
      mayoresProm.add(numeros[i]);
    }
  }
  print("La cantidad de mayores al promedio es ${mayoresProm.length}");
  print("La lista de mayores al promedio es:");
  print(mayoresProm);
  }