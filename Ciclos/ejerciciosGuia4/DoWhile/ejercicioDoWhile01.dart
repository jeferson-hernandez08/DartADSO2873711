import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO DO WHILE 01.
  /*
    1. En un supermercado una ama de casa pone en su carrito los artículos que va tomando de los
       estantes. La señora quiere asegurarse de que el cajero le cobre bien lo que ella ha comprado, por lo
       que cada vez que toma un articulo anota su precio junto con la cantidad de artículos iguales que ha
       tomado y determina cuanto dinero gastara en ese articulo; a esto le suma lo que ira gastando en los
       demás artículos, hasta que decide que ya tomo todo lo que necesitaba. Ayúdale a esta señora a
       obtener el total de sus compras.
  */

  //DECLARACION VARIABLES  
  String? articulo, opcion;
  int cantArticulo, contadorArticulos = 0, acumArticulos = 0;
  double precio, totalArticulo, totalCompra = 0;
  
  //ENTRADA DATOS - PROCESOS FORMULAS -  SALIDA DATOS.  
  do {
    print("Ingrese el articulo a comprar:");
    articulo = stdin.readLineSync();
    print("Ingrese las cantidad a compra:");
    cantArticulo = int.parse(stdin.readLineSync()!);
    print("Ingrese precio del articulo:");
    precio = double.parse(stdin.readLineSync()!);

    totalArticulo = cantArticulo * precio;
    print("El total del articulo $articulo sera: $totalArticulo");
    totalCompra += totalArticulo;    //Variable Acumulador
    contadorArticulos++;             //Variable Contador
    acumArticulos += cantArticulo;   //Variable Contador
    print("Hasta el momento lleva $contadorArticulos Items de articulos");
    print("La cantidad de articulos en total va en: $acumArticulos");
    print("Desea ingresar otro articulo (Si) - (No):");
    opcion = stdin.readLineSync();
    print('*' * 50);
  }
  while (opcion!.toUpperCase() != "NO");   //!.toUpperCase(), es paraconverti todos los datos que se ingresen a mayusculas.

  print("Señora, el total de la compra sera: $totalCompra");
  print("Va a llevar en total: $contadorArticulos");
  print("La cantidad de articulos en total va en: $acumArticulos");

}