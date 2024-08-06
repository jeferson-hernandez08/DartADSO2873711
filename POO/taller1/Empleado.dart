class Empleado {

  //Punto 1: Declaracionde variables
  String nombre; 
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  //Punto 2: Constructor clase vehiculo. Prueba git hub
  Empleado(this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato);

  //Punto 3: Crecion de Metodos. 
  //metodo aumentar salario
  void aumentarSalario(double porcentaje) {
    double incrementoSalario = this.salario * porcentaje;
    double nuevoSalario = incrementoSalario + this.salario;
    print("Su nuevo salario incrementado es: $nuevoSalario");
  }

  //Metodo cumplir años.
  void cumplirAnios() {
    int nuevaEdad = this.edad + 1;
    print("La nueva es de: $nuevaEdad");
  }

  //Metodo cambiar puesto. 
  void cambiarPuesto(String nuevoPuesto) {
    print("El nuevo puesto del empleado es: $nuevoPuesto");
  }

  //Metodo mostrar informacion. 
  void mostrarInformacion() {
    print("El nombre del empleado es: $nombre");
    print("La edad del empleado es: $edad");
    print("El salario del empleado es: $salario");
    print("El puesto del empleado es: $puesto");
    print("El tipo contrato del empleado es: $tipoContrato");
  }

  //Metodo bonificacion
  void calcularBonificacion(String tipoContrato) {
    String tipoContrato1 = "Contratista"; 
    String tipoContrato2 = "Temporal"; 
    String tipoContrato3 = "Indefinido"; 

    if (tipoContrato == tipoContrato1) {
      double bonifiContratista = this.salario * 0.10;
      double nuevoSalario = bonifiContratista + this.salario;
      print("Su bonificacion como contratista es de: $nuevoSalario");
    }
    else if (tipoContrato == tipoContrato2) {
            double bonifiTemporal = this.salario * 0.05;
            double nuevoSalario = bonifiTemporal + this.salario;
            print("Su bonificacion como temporal es de: $nuevoSalario");
          }
          else if (tipoContrato == tipoContrato3) {
                  double bonifiIndefinido = this.salario * 0.15;
                  double nuevoSalario = bonifiIndefinido + this.salario;
                  print("Su bonificacion como indefinido es de: $nuevoSalario");
                }
                else {
                  print("Fuera de rango no pertenece al tipo de contrato");
                }
  }
}