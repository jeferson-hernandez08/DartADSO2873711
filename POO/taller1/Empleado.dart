class Empleado {

  //Punto 1: Declaracionde variables
  String nombre; 
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  //Punto 2: Constructor clase vehiculo. 
  Empleado(this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato);

  //Punto 3: Metodos. 
  //metodo aumentar salario
  void aumentarSalario(double porcentaje) {
    double nuevoSalario = this.salario * porcentaje;
    print("Su nuevo salario incrementado es: $nuevoSalario");
  }

  //Metodo cumplir años.
  void cumplirAnios() {
    int nuevaEdad = this.edad + 1;
    print("La nueva es de: $nuevaEdad");
  }









}