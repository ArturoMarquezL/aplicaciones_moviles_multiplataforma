import "dart:io";

void main(){

  int edad_perro = 7;
  print("Inserta la edad del perro: ");
  var edadperro = stdin.readLineSync(); 
  double edad = double.parse(edadperro);

  double edad_humana = edad / edad_perro;
  print("La edad de un perro a años humanos: $edad_humana");

}