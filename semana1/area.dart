import "dart:io";

void main(){

  stdout.writeln("ingresa la base: ");
  var b= stdin.readLineSync();
  double base= double.parse(b);
  stdout.writeln("Ingresa la altura: ");
  var a= stdin.readLineSync();
  double altura= double.parse(a);
  var area= (base * altura)/2 ;
  print("EL area es de: $area ");
}