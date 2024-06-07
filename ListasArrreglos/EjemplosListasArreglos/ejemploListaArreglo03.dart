import 'dart:io';

void main() {
  //Agregar elementos a la Lista - ADD

  List<String> nombres = [];            
  String? nombre;
                                             
  //Ciclo para llenar nombres a la lista.               //PRUEBA DE ESCRITORIO MENTAL. 
  for (int i=0; i < 5; i++) {       //Para adicionar los 5 elemntos de la lista //El i representa al indice/subindice del arreglo
    print ("Digite el nombre #${i + 1}");                             //lo cual va asignando los valores de forma automatica, sin 
    nombre = stdin.readLineSync()!;                                   //tengamos que hacerl nosotros de forma manual. 
    nombres.add(nombre);           //Agrega elemento al final de la lista, .add es el que hace toda la magia
    print(nombres);                //Ej: [sebas, jefer, arely, edgar, alejandra], la i es el indice/subindice y va agregando al final de la lista.
  }
  print('*' * 30);              
  print(nombres);           //Vector ya cargado [sebas, jefer, arely, edgar, alejandra].

  //Recorrer la lista para mostrar los elementos. Ver cada una de las cajas.
  for (int i=0; i < nombres.length; i++) {     //Para recorrer la lista  //.length valida el tamaño de la lista o el numero de cajas
    print("Nombre #${i+1}: ${nombres[i]}");   //La magia esta en {nombres[i]}, i variable va mostrando la posicion. 

  }
}