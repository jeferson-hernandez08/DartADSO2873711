import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL ANIDADO 08
  /*
    8. El jefe del departamento de construcción de la constructora Pagasa, desea que se le desarrolle un
       programa para sus empleados, el cual calcule el sueldo de un empleado, de tal manera que el sueldo
       se calculará de la siguiente manera: si el número de horas trabajadas es mayor a 40, el excedente
       de 40 hrs. se paga al doble de la cuota por hora, en caso de no ser mayor a 40 hrs. se paga la cuota
       normal por hora, si las horas exceden a 50 hrs. el excedente de 50 hrs. se paga al triple de la cuota
       por hora. Se pedirá el nombre del empleado, el número de horas trabajadas y la cuota por hora.
       mostrar en pantalla el nombre del empleado, el número de horas trabajadas y su sueldo.
  */ 

   //DECLARACION VARIABLES
   String? nombreEmpleado;
   double horasTrabajadas, coutaPorHora, sueldoEmpleado, horasExtra, horasExtraDobles;
   
   //ENTRADADATOS
   print("Ingrese nombre de empleado:");
   nombreEmpleado = stdin.readLineSync();
   print ("Ingrese numero de horas trabajadas:");
   horasTrabajadas = double.parse(stdin.readLineSync()!);
   print ("Ingrese cuota por hora o valor hora trabajada:");
   coutaPorHora = double.parse(stdin.readLineSync()!);

   //PROCESO - FORMULAS - SALIDA
   if ( horasTrabajadas > 50 ) {
    horasExtra       = horasTrabajadas  - 50 ;      //Se sacan las horas extras despues de > 50 horas primeramente
    horasExtraDobles = horasExtra * 3;                 //Luego se le paga al triple las horas extra si es > a 50 horas. 
    horasExtraDobles = horasExtraDobles * coutaPorHora;  //Se saca el pago de las horas horas extra triples
    sueldoEmpleado   = (50 * coutaPorHora) + horasExtraDobles;  //SueldoEmpleado es igual la suma de las primeras horas traajadas + el pago de las horas trajadas triples.
    print ("Su nombre de empleado es: $nombreEmpleado y su numero de horas trabajadas es: $horasTrabajadas");
    print ("El numero de Horas extra para pagar al triple son: $horasExtra");
    print ("El pago de las horas extras al triple es: $horasExtraDobles pesos");
    //print ("El sueldo total del empleado es: $sueldoEmpleado pesos");
   } else if ( horasTrabajadas > 40 ) {
            horasExtra       = horasTrabajadas  - 40 ;      //Se sacan las horas extras despues de > 40 horas primeramente
            horasExtraDobles = horasExtra * 2;                 //Luego se le paga al doble las horas extra si es > a 40 horas. 
            horasExtraDobles = horasExtraDobles * coutaPorHora;  //Se saca el pago de las horas horas extra dobles
            sueldoEmpleado   = (40 * coutaPorHora) + horasExtraDobles;  //SueldoEmpleado es igual la suma de las primeras horas traajadas + el pago de las horas trajadas dobles.
            print ("Su nombre de empleado es: $nombreEmpleado y su numero de horas trabajadas es: $horasTrabajadas");
            print ("El numero de Horas extra para pagar al doble son: $horasExtra");
            print ("El pago de las horas extras al doble es: $horasExtraDobles pesos");
            //print ("El sueldo total del empleado es: $sueldoEmpleado pesos");
           }
           else {
            sueldoEmpleado = horasTrabajadas * coutaPorHora;
            print ("Su nombre de empleado es: $nombreEmpleado.");
            print ("No tienes horas extra, su numero de horas trabajadas es: $horasTrabajadas.");
            //print ("El sueldo total del empleado es: $sueldoEmpleado pesos");
           }

    //SALIDA DATOS
    print ("El sueldo total del empleado es: $sueldoEmpleado pesos");   //Ahorrarnos lineas de codigo

}