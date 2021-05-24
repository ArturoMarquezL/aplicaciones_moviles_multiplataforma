import "dart:io";

void main(){
  
  stdout.writeln("Ingresa lado 1: ");
  var lado1= stdin.readLineSync();
  double lado_1= double.parse(lado1);
  stdout.writeln("Ingresa lado 2: ");
  var lado2= stdin.readLineSync();
  double lado_2= double.parse(lado2);
  stdout.writeln("Ingresa lado 3: ");
  var lado3= stdin.readLineSync();
  double lado_3= double.parse(lado3);
  stdout.writeln("Ingresa lado 4: ");
  var lado4= stdin.readLineSync();
  double lado_4= double.parse(lado4);
  stdout.writeln("Ingresa lado 5: ");
  var lado5= stdin.readLineSync();
  double lado_5= double.parse(lado5);
  stdout.writeln("Ingresa lado 6: ");
  var lado6= stdin.readLineSync();
  double lado_6= double.parse(lado6);
  
  var perimetro= (lado_1 + lado_2 + lado_3+ lado_4+ lado_5 + lado_6) ;
  print("El perimetro es: $perimetro ");

}