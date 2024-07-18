class Perro {  //Nombre de la clase

  // Atributos
  String nombre;
  String raza;
  double peso;

  // Constructor: Funcion que se ejecuta cuando se crea un objeto
  Perro(this.nombre, this.raza, this.peso);

  // Perro(String nom, String raz, double peso) {  Manera de entender el constructor.
  //   this.nombre = nom;
  //   this.raz = raz;
  //   this.peso = peso;
  // }

  //Metodos
  void correr() {
    print("El perro ${this.nombre} corre");
  }
  void ladrar() {
    print("El perro ${this.nombre} ladra");
  }
  void dormir() {
    print("El perro ${this.nombre} duerme");
  }
  void mostrarInformacion() {
    print("El perro se llama ${this.nombre}, es de raza ${this.raza} y pesa ${this.peso} Kg");
  }
} //Fin clase

void main() {

  //Creamos el objeto de la clase perro 
  int perro;        //variable tipo entero 
  String perros;    //variable tipo cadena
  bool perross;    //variable tipo booleano
  Perro perro1;    //variable tipo booleano (clase)

  perro1 = Perro("Firu", "Pitbull", 30.5);

  //var perro1 = Perro("Firu", "Pitbull", 30.5);




}