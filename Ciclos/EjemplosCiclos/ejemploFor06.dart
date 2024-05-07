import 'dart:io';

void main() {
  /*
    Pedir al usuario n notas ingresadas por el usuario. Si el promedio es mayor a 3,
    decir que el estudiante aprobo el trimestre, sino indique que reprobo. 
  */

  int cantNotas = 5;
  double nota, suma = 0, promedio;

  print("Ingrese la cantidad de notas:" );
  cantNotas = int.parse(stdin.readLineSync()!);
  
  for (int i = 0; i < cantNotas; i ++) { 
    print("Ingrese la nota " + (i + 1).toString());
    nota = double.parse(stdin.readLineSync()!);
    suma += nota;
  }
  promedio = suma / cantNotas;
  if ( promedio > 3) {
    print("APROBO EL TRIMESTRE");
  }
  else {
    print("REPROBO EL TRIMESTRE");
  }
    
  

  /*
  double numNotas; 
  double sumNotas = 0; // Variable tipo ACUMULADOR.
  double totalPromedio ;
  int cant = 5;
  
  for (int i = 0; i < cant; i ++) { 
    print("Ingrese nota " + (i+1).toString());
    numNotas = double.parse(stdin.readLineSync()!);
    //Se van guardando la suma de los numeros.
     sumNotas = sumNotas + numNotas;               // Esta variables suma se guarda con el primer numero ingresado y se suma
     totalPromedio = sumNotas / cant;
    // print("El promedio total es: $totalPromedio %"); 
    if ( totalPromedio >= 3 ) {
      print("APROBADO, Gano el trimestre"); 
      print("Su promedio total es: $totalPromedio %");
    }
    else {
      print("REPROBO, Perdio el trimestre"); 
      print("Su promedio total es: $totalPromedio %");
    }
  }
  */
}




