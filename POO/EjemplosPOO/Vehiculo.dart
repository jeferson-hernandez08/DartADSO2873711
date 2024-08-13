class Vehiculo {
  String color;   //late es para decirle que estas variables se van a iniciar despues y no tener problemas con los nulos
  int velocidad;
  double tamanio;
  
   //Constructor Clase Vehiculo
   Vehiculo(this.color, this.velocidad, this.tamanio) {} //Forma corta solo el lenguaje Dart 
   //  Vehiculo(String col, int vel, double tam) {  Segunda forma de hacerlo en cualquier lenguaje de programacion.
   //   this.color = col;
   //   this.velocidad = vel;
   //   this.tamanio = tam;
   //  }

   //Metodos SET y GET
   //Setea o asigna un nuevo valor para el atributo color 
   void setColor(String newColor){
      this.color = newColor;
   }
  //  void setColor2(String color){
  //     color = color;
  //  }
  void setVelocidad(int newvelocidad){
      this.velocidad = newvelocidad;
   }

   void setTamanio(double newTamanio){
      this.tamanio = newTamanio;
   }

   //Get Perimite obtener el valor del atributo color 
   String getColor() {
    return this.color;
   }

   int getVelocidad() {
    return this.velocidad;
   }

   double getTamanio() {
    return this.tamanio;
   }
    
   //Metodo Avanzar
   void avanzar(int velAvanz) {
    int newVelocidad = this.velocidad + velAvanz;  //Solamente esta variable newVelocidad va a funcionar solo dentro de este metodo 
    if (newVelocidad <= 200) {
      this.velocidad = newVelocidad;
      print("El vehiculo avanza a ${this.velocidad}");
    }
    else {
      print("No puede superar el limite de 200 km/h");
    }
   }

   //Metodo detenerse
   void detenerse() {
    velocidad = 0;
    print("El vehiculo se detiene");
   }

   //Metodo avanzar
   void disminuirvelocidad(int disVel) {
    int dismiVelocidad = this.velocidad - disVel;
    if (dismiVelocidad >= 0) {
      this.velocidad = dismiVelocidad;
      print("El vehiculo disminuye ${this.velocidad}");
    }
    else {
      print("No s epuede disminuir la velicidad es 0");
    }
   }
   
   //Metodo parquear
   void parquear(String parqueo) {
    velocidad = 0;
    print("El vehiculo a sido parqueado en $parqueo");
   }
}