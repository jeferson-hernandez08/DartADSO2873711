import 'Vehiculo.dart';

void main() {
  Vehiculo myCar = Vehiculo("Rojo", 200, 2.5);

  print("El auto es de color ${myCar.getColor()}");    //Se usa get para llamar el atributo color
  myCar.setColor("Amarillo");                          //Se usa set para cambiar el valor el atributo.
  print("El auto cambió a color ${myCar.getColor()}"); //Se improme el valor que se cambió.

  print("El auto es de velocidad ${myCar.getVelocidad()}");
  myCar.setVelocidad(300);
  print("El auto cambió a velocidad ${myCar.getVelocidad()}");

  print("El auto es de tamaño ${myCar.getTamanio()}");
  myCar.setTamanio(3.85);
  print("El auto cambió de tamaño a ${myCar.getTamanio()}");

  
  








}