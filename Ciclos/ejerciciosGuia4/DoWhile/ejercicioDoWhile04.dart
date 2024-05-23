import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO DO WHILE 04.
  /*
    4.  Un censador recopila ciertos datos aplicando encuestas para el último Censo Nacional de Población 
        y Vivienda. Desea obtener de todas las personas que alcance a encuestar en un día, que porcentaje 
        tiene estudios de primaria, secundaria, carrera técnica, estudios profesionales y estudios de 
        posgrado.
        El programa debe preguntar si se desea continuar ingresando datos.
  */

  //DECLARACION VARIABLES     
  int contador = 0;       //Variable Contador o valor inicial del while       ***************Otra opcion para hacer con Switch****************
  int persoEncuestadas;   //Variable para asignar la cantidad. Condicion de parada while.
  String? tipoEstudio, opcion;
  int primaria = 0, secundaria = 0, carreTecnica = 0, estudProfesionales = 0, estudPosgrado = 0;
  double porcenPrimaria, porcenSecundaria, porcentecnico, porcenProfesional, porcenPosgrado;
  
  //ENTRADA DATOS 
  print("Ingrese la cantidad de personas encuestadas:");
  persoEncuestadas = int.parse(stdin.readLineSync()!);
   
  //PROCESOS FORMULAS - ENTRADA DATOS - SALIDA DATOS. 
  do {
    print("Ingrese el tipo de estudio de persona # ${contador+1}");
    tipoEstudio = stdin.readLineSync();                                                  //Validamos aqui si es diferente a las categorias.
    while ( tipoEstudio != "primaria" && tipoEstudio != "secundaria" && tipoEstudio != "tecnico" && tipoEstudio != "profesional" && tipoEstudio != "posgrado" ) {  
      print("Dato erroneo Ingrese nuevamente:");                                                                                
      print("Ingrese el tipo de estudio de persona # ${contador+1}");
      tipoEstudio = stdin.readLineSync();
    }
      if ( tipoEstudio == "primaria") {
        primaria++;
        print("Personas de primaria va en $primaria");
      }
      else if ( tipoEstudio == "secundaria" ) {
            secundaria++;
            print("Personas de secundaria va en $secundaria");
          }
          else if ( tipoEstudio == "tecnico" ) {
                  carreTecnica++;
                  print("Personas tecnicas va en $carreTecnica");
                }
                else if ( tipoEstudio == "profesional" ) {
                      estudProfesionales++;
                      print("Personas profesionales va en $estudProfesionales");
                    }
                    else if ( tipoEstudio == "posgrado" ) {
                          estudPosgrado++;
                          print("Personas de posgrado va en $estudPosgrado");
                         }
      //Validamos al mismo tiempo
      print("Desea continuar: SI (s) - NO (n)");       //Este viene a lo ultimo 
      opcion = stdin.readLineSync();
      if ( opcion == "n" ) {           //Para salir del programa  
        contador = persoEncuestadas;
      }  
      // else if ( opcion == "s" ) {   //Otra opcion (comentada).
      //   contador++;
      // }                   
    contador++;
  //  }
  } 
  while ( contador < persoEncuestadas );

  porcenPrimaria    = (primaria / persoEncuestadas) * 100;
  porcenSecundaria  = (secundaria / persoEncuestadas) * 100;
  porcentecnico     = (carreTecnica / persoEncuestadas) * 100;
  porcenProfesional = (estudProfesionales / persoEncuestadas) * 100;
  porcenPosgrado    = (estudPosgrado / persoEncuestadas) * 100;

  print("_______________________________________________");
  print("La cantidad de personas encuentadas es: $persoEncuestadas");
  print("El total de personas de primaria es $primaria");
  print("El total de personas de secundaria es $secundaria");
  print("El total de personas tecnicas es $carreTecnica");
  print("El total de personas profesionales es de $estudProfesionales");
  print("El total de personas de posgrado es de $estudPosgrado");
  print("_______________________________________________");
  print("La cantidad de personas encuentadas es: $persoEncuestadas");
  print("Porcentaje de personas de primaria $porcenPrimaria %");
  print("Porcentaje de personas de secundaria $porcenSecundaria %");
  print("Porcentaje de personas tecnicas $porcentecnico %");
  print("Porcentaje de personas profesionales $porcenProfesional %");
  print("Porcentaje de personas posgrado $porcenPosgrado %");
  
}