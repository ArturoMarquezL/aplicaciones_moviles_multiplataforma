import "dart:io";

void main(){

  stdout.writeln("Calificacion de primero parcial: ");
  var cal1= stdin.readLineSync();
  double cali1= double.parse(cal1);
  var par1 = cali1 * 0.20 ;
  stdout.writeln("Calificacion se segundo parcial: ");
  var cal2= stdin.readLineSync();
  double cali2= double.parse(cal2);
  var par2 = cali2 *0.30; 
  stdout.writeln("Calificacion de tercer parcial: ");
  var cal3= stdin.readLineSync();
  double cali3= double.parse(cal3);
  var par3 = cali3 *0.50;

  var calificacion= par1 + par2 + par3;
  print("El promedio es de: $calificacion ");
  
}