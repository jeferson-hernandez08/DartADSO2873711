import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL ANIDADO 06
  /*
    6. El dueño de una empresa desea planificar las decisiones financieras que tomara en el Siguiente año. 
       La manera de planificarlas depende de lo siguiente:
       Si actualmente su capital se encuentra con saldo negativo, pedirá un préstamo bancario para que su 
       nuevo saldo sea de $1000000. Si su capital tiene actualmente un saldo positivo pedirá un préstamo 
       bancario para tener un nuevo saldo de $2000000, pero si su capital tiene actualmente un saldo 
       superior a los $2000000 no pedirá ningún préstamo.
       Posteriormente repartirá su presupuesto de la siguiente manera.
        • $500000 para equipo de computo
        • $200000 para mobiliario
        • y del resto, la mitad será para la compra de insumos y la otra para otorgar incentivos al personal.
        Solicitar el capital y en base a este desplegar que cantidades se destinaran para la compra de insumos 
        e incentivos al personal y, en caso de que fuera necesario, a cuanto ascendería la cantidad que se 
        pediría al banco.
  */ 

  //DECLARACION VARIABLES
  double capitalActual, restribucion1, restribucion2, prestamo;

  //ENTRADADATOS
  print("Ingrese capital actual:");
  capitalActual = double.parse(stdin.readLineSync()!);

  //PROCESO - FORMULAS
  if ( capitalActual >= 2000000) {
    restribucion1 = capitalActual - 500000 - 200000;
    restribucion2 = restribucion1 / 2;
    print("Se repartira para la compra de insumos la mitad restante: $restribucion2 pesos");
    print("Se repartira para incentivos al personal la otra mitad restante: $restribucion2 pesos");
    print("No se pide prestamo");
  }
  else if ( capitalActual >= 0 ) {
        prestamo      = 2000000 - capitalActual;    //La cantidad que se solita al banco o prestamo.
        capitalActual = capitalActual + prestamo;   //Total capital actual
        restribucion1 = capitalActual - 500000 - 200000;
        restribucion2 = restribucion1 / 2;
        print("Se repartira para la compra de insumos la mitad restante: $restribucion2 pesos");
        print("Se repartira para incentivos al personal la otra mitad restante: $restribucion2 pesos");
        print("La cantidad del prestamo al banco que se pidio es de $prestamo");
       }
       else {
        prestamo      = 1000000 - capitalActual;    //La cantidad que se solita al banco o prestamo.
        capitalActual = capitalActual + prestamo;   //Total capital actual
        restribucion1 = capitalActual - 500000 - 200000;
        restribucion2 = restribucion1 / 2;
        print("Se repartira para la compra de insumos la mitad restante: $restribucion2 pesos");
        print("Se repartira para incentivos al personal la otra mitad restante: $restribucion2 pesos");
        print("La cantidad del prestamo al banco que se pidio es de $prestamo");
       }
}