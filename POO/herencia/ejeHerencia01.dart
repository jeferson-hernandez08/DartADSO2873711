class Animal {
  String color;
  String especie;
  double tamanio;
  Animal(this.color,this.especie, this.tamanio);

  void hacerSonido(){
    print("El animal hace un sonido");
  }
}

//La clase 'Perro', hereda todo lo de la clase 'Animal'
class Perro extends Animal {
  String raza;
  Perro(this.raza, colorUsu, especieUsu, tamUsu):super(colorUsu,especieUsu,tamUsu);
  @override // Se sobrescribe el método del padre
  void hacerSonido(){
    print("El perro ladra");
  }
  void mostrarInfo(){
      print("""
        Especie: $especie
        Color: $color
        Tamaño: $tamanio
        raza: $raza
        """);
    }
  }

  //La clase 'Gato', hereda todo lo de la clase 'Animal'
  class Gato extends Animal{
    bool estaVacunado;
    Gato(this.estaVacunado, colorUsu, especieUsu, tamUsu):super(colorUsu,especieUsu,tamUsu);
    @override //Se sobrescribe el método del padre
    void hacerSonido(){
      print("El gato maulla");
    }
    void mostrarInfo(){
      print("""
        Especie: $especie
        Color: $color
        Tamaño: $tamanio
        está vacunado: ${estaVacunado? "Si":"No"} 
        """); //Compuesto de tres partes(1. condicion, 2. valor SI TRUE, 3. valor No false)
  }
}

void main() {
  Perro myDog = Perro("Pitbull","Negro","canino",20.0);
  myDog.hacerSonido();
  myDog.mostrarInfo();
  Gato myCat = Gato(true,"blanco","felino",10.0 );
  myCat.hacerSonido();
  myCat.mostrarInfo();
}