import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO LISTA/ARREGLO 03.
  /*
    3. Almacenar 15 números en un vector, imprimir cuantos son ceros, cuántos son negativos, cuantos
       positivos. Imprimir además la suma de los negativos, la suma de los ceros y la suma de los positivos.
  */
  
  //DECLARACION LISTAS/VARIABLES 
  List <double> vector = [];
  int cantVector = 15;
  double num;
  int ceros = 0, positivos = 0, negativos = 0;
  double sumaNegativos = 0, sumaPositivos = 0, sumaCeros = 0;
  
  //PROCESOS FORMULAS - ENTRADA DATOS - SALIDA DATOS. 
  for ( int i = 0; i < cantVector; i++ ) {     //Ciclo para ingresar las datos al vector
    print("Ingrese el numero # ${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    print("Numero agregado al vector: $num");
    vector.add(num);           //Al vector le agregamso los numeros. 
    print("El vector va en:");
    print(vector);
  }

  for ( int i = 0; i < vector.length; i++ ) {    //Ciclo para recorrer el vector ya cargado
     if ( vector[i] == 0 ) {
      ceros = ceros + 1;
      //sumaCeros = sumaCeros + vector[i];
     }
     else if ( vector[i] < 0 ) {
           negativos++;
           sumaNegativos = sumaNegativos + vector[i];
          }
          else if ( vector[i] > 0 ) {
                positivos++;
                sumaPositivos += vector[i];
               } 
  }
  //SALIDA DATOS
  print("**********************************************");
  print(vector);
  print("La cantidad de numeros ceros es: $ceros");
  print("La suma de los numeros ceros es: $sumaCeros");
  print("La cantidad de numeros positivos es: $positivos");
  print("La suma de los numeros positivos es: $sumaPositivos");
  print("La cantidad de numeors negativos es: $negativos");
  print("La suma de los numeros positivos es: $sumaNegativos");
}