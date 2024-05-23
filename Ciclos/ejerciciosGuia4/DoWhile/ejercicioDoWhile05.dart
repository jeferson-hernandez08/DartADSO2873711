void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO DO WHILE 05.
  /*
    5. Calcular la suma siguiente:
       100 + 98 + 96 + 94 + . . . + 0 en este orden
  */

  //DECLARACION VARIABLES   
  int contador = 100;       //Variable Contador o valor inicial del while  
  int cantNumeros = 0;    //Variable para asignar la cantidad. Condicion de parada while.
  int suma = 0;          //Variable acumulador

  //ENTRADA DATOS - PROCESOS FORMULAS -  - SALIDA DATOS. 
  do {
    print ("Numero # $contador");
    suma = suma + contador;
    print ("El resultado total de la suma desde 100 - dos en dos es:");
    print ("$suma");
  contador -= 2;
  }
  while ( contador >= cantNumeros );
}


