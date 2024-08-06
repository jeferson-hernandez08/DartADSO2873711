class Vehiculo {
  late String color;   //late es para decirle que estas variables se van a iniciar despues y no tener problemas con los nulos
  late int velocidad;
  late double tamanio;
  
   //Constructor Clase Vehiculo
   //Vehiculo(this.color, this.velocidad, this.tamanio) {} Forma corta solo el lenguaje Dart 
   Vehiculo(String col, int vel, double tam) { //Segunda forma de hacerlo en cualquier lenguaje de programacion.
    this.color = col;
    this.velocidad = vel;
    this.tamanio = tam;
   }
    
   //Metodo Avanzar
   void avanzar(int velAvanz) {
    this.velocidad = this.velocidad + velAvanz;
    print("El vehiculo avanza a ${this.velocidad}");
   }
   //Metodo detenerse
   void detenerse() {
    velocidad = 0;
    print("El vehiculo se detiene");
   }
}

void main() {
  /***********************Primera forma************************** */
  Vehiculo miVehiculo1;
  miVehiculo1 = Vehiculo("blanco", 30, 3.5);
  miVehiculo1.avanzar(60);
  miVehiculo1.avanzar(70);
  miVehiculo1.detenerse();

  /***********************Primera forma************************** */
  Vehiculo miVehiculo2 = Vehiculo("negro", 10, 4.5);

  miVehiculo1.avanzar(50);
  miVehiculo1.detenerse();
  /*************************************************/
  miVehiculo1.avanzar(40);

}