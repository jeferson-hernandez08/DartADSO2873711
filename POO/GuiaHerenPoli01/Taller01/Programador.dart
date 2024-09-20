import 'Persona.dart';

class Programador extends Persona {
  String _empresa;
  double _salario;

  //Constructor Clase Programador.
  Programador(this._empresa, this._salario, String _nombre, int _edad) : super (_nombre, _edad);

  void setEmpre(String nuevaempresa) {
    this._empresa = nuevaempresa;
  }

  String getEmpresa() {
    return this._empresa;
  }

  void setSalario(double nuevoSalario) {
    this._salario = nuevoSalario;

  }

  double getSalario() {
    return this._salario;
  }

  double obtenerSalarioNeto() {
    this._salario = this._salario - (this._salario * 0.11);
    return this._salario;

  }

  void mostrarInfoProgramador() {
    //this.mostrarInfoPersona();  //Heredamos de persona. 
    print("""
            Empresa: $_empresa
            Salario: $_salario;
            Salario Neto: ${obtenerSalarioNeto()}
         """);
  }
}