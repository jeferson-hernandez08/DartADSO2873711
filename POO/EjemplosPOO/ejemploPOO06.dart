import 'Vehiculo.dart';

void main() {
  Vehiculo myCar = Vehiculo("Rojo", 200, 2.5);

  print("El auto es de color ${myCar.getColor()}");
  myCar.setColor("Amarillo");
  print("El auto cambió a color ${myCar.getColor()}");

  print("El auto es de velocidad ${myCar.getVelocidad()}");
  myCar.setVelocidad(300);
  print("El auto cambió a velocidad ${myCar.getVelocidad()}");

  //Terminar
  








}