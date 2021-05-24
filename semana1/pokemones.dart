import "dart:io";

void main (){

  double pokemon = 30.0;
  print("Inserta la base del rectangulo: ");
  var b = stdin.readLineSync();
  double base = double.parse(b);
  print("Inserta la altura del rectangulo: ");
  var a = stdin.readLineSync();
  double altura = double.parse(a);
  
  double area = base * altura;
  double total = area / pokemon;
  print("Todos los pokemones que caben son: $total ");

}