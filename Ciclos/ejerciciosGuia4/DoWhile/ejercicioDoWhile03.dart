import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO DO WHILE 03.
  /*
    3. En la Cámara de Diputados se levanta una encuesta con todos los integrantes con el fin de determinar 
       que porcentaje de los n diputados esta a favor del Tratado de Libre Comercio, que porcentaje esta en 
       contra y que porcentaje se abstiene de opinar.
       El programa debe preguntar si se desea continuar ingresando datos.
  */

  //DECLARACION VARIABLES
  double porcentajeFavor, porcentajeContra;
  int contContra = 0, contFavor = 0, totalVotos = 0;
  String? opcion, opcionTratado;

  //ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS. 
  do {
    print("Sr. diputado esta a favor de tartado ? (F) - (C)");
    opcionTratado = stdin.readLineSync();
    if ( opcionTratado!.toUpperCase() == "F") {
      contFavor++;
      totalVotos++;
    } 
    else if ( opcionTratado.toUpperCase() == "C" ) {
           contContra++;
           totalVotos++;
         }
         else {
          print("Voto nulo");
         }
    print("Hata el momento van $totalVotos votos");
    print("Desea ingresar otro diputado ? (SI) - (NO)");
    opcion = stdin.readLineSync();
    print('*' * 30);
  }
  while ( opcion!.toLowerCase() != "no");  //!.toLowerCase(), es para convertir todos los datos que se ingresen a minuscula.
  
  porcentajeFavor = (contFavor * 100) / totalVotos;
  porcentajeContra = (contContra * 100) / totalVotos;
  print("El total de votos fue: $totalVotos");
  print("El porcentaje a favor es: $porcentajeFavor");
  print("El porcentaje en contra es: $porcentajeContra");
  
}