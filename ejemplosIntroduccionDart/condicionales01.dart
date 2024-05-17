import 'dart:ffi';

void main() {
  //CONDICIONAL SIMPLE
  print ("CONDICINAL SIMPLE");
  int edad;  //DEFINICION
  edad = 18; //ASIGNACION

  if (edad >= 18) {
    print ("Usted es mayor de edad");
  }
  print("**************************");

  //CONDICIONAL DOBLE
  print ("CONDICINAL DOBLE");
  bool esMayor = true;     //DEFINICION Y ASIGNACION
  if (esMayor == false) {   //SI
     print("Es mayor de edad");
  } 
  else { //SINO
    print("Es menor de edad");
  }
  print("**************************");

  //CONDICIONAL DOBLE - 2
  print ("CONDICINAL DOBLE - 2");
  double nota = 4.5;     //DEFINICION Y ASIGNACION
  if (nota >= 3) {   //SI
     print ("Usted aprobo el examen");
  } 
  else { //SINO
    print ("Usted no aprobo el examen");
  }

  print("**************************");
  //CONDICIONAL ANIDADO
  print ("CONDICINAL ANIDADO:");
  int estrato = 6;     //DEFINICION Y ASIGNACION
  if (estrato == 1) {   //SI
     print ("Usted es estrato 1");
     print ("Se le subsidia el 10% de la factura");
  } else if ( estrato == 2) { //SINO
      print ("Usted es estrato 2");
      print ("Se le subsidia el 5% de la factura");
    } else if ( estrato == 3) {
        print ("Usted es estrato 3");
        print ("Paga la factura tal cual");
      } else if ( estrato == 4) {
          print ("Usted es estrato 4");
          print ("Paga un 5% mas de la factura");
        } else if ( estrato == 6) {
            print ("Usted es estrato 6");
            print ("Paga un 15% mas de la factura");
          } 
  else {
    print ("El estrato es incorrecto");
  }

  print("**************************");
  //CONDICIONAL MULTIPLE
  print ("CONDICINAL MULTIPLE:");
  int trimestre = 0;     //DEFINICION Y ASIGNACION
  switch ( trimestre ) {
    case 1:
      print("TRIMESTRE 1");
      print("Fase de requerimientos");
      break;
    case 2:
      print("TRIMESTRE 2");
      print("Fase de analisis");
      break;
    case 3:
      print("TRIMESTRE 3");
      print("Fase de diseño");
      break;
    case 4:
      print("TRIMESTRE 4");
      print("Fase de implementacion");
      break;
    case 5:
      print("TRIMESTRE 5");
      print("Fase de pruebas");
      break;
    case 6:
      print("TRIMESTRE 6");
      print("Fase de mantenimiento");
      break;
  default:
    print("El trimeestre es incorrecto");
  } //CIERRE SWICH
}