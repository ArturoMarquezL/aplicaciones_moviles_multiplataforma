import "dart:io";

List guardar = [];
void main(){
  var repetir="si";
  while (repetir=="si"){
    stdout.writeln("Menú\n1:Mostrar todos los datos.\n2:Insertar un nuevo registro.\n3:Modificar un registro.\n4:Borrar un registro.\nElige la opcion con el numero correspindiente: ");
    var opcion = stdin.readLineSync();
    if (opcion =="1"){
      mostrar();
    }
    if (opcion =="2"){
      insertar();
    }
    if (opcion =="3"){
      modificar();
    }
    if (opcion =="4"){
      eliminar();
    }
    stdout.writeln("¿Deseá regresar al menú?");
    repetir = stdin.readLineSync();
  }
}
void insertar(){
  stdout.writeln("Peronas a ingresar: ");
  var veces = stdin.readLineSync();
  int vecess = int.parse(veces);
  int cont = 0;
  for (var i = 0; i < vecess; i++){
    cont=cont+1;
    stdout.writeln("Ingresa el nombre de la persona: $cont ");
    var nombre = stdin.readLineSync();
    stdout.writeln("Ingresa el numero telefonico: ");
    var telefono = stdin.readLineSync();
    stdout.writeln("Ingresa el email de la persona: ");
    var email= stdin.readLineSync();
    Map <dynamic, dynamic> agendadatos = {
      'Nombre' : nombre,
      'Telefono' : telefono,
      'Email' : email
    };
    guardar.add(agendadatos);
  }
}
void mostrar(){
  print(guardar);
}
void modificar(){
  mostrar();
  stdout.writeln("Ingresa el nombre de la persona que se quiere modificar: ");
  var cambio = stdin.readLineSync(); 
  for(int i=0; i < guardar.length; i++){
      var modificacion = new Map();
      modificacion = guardar[i];

    if (cambio ==modificacion['Nombre']){
      stdout.writeln("Ingresa el nombre de la persona: ");
      var nombremod = stdin.readLineSync();
      stdout.writeln("Ingresa el telefono de la persona: ");
      var telefonomod = stdin.readLineSync();
      stdout.writeln("Ingresa el email de la persona: ");
      var emailmod = stdin.readLineSync();
      modificacion["Nombre"]=nombremod;
      modificacion["Telefono"]=telefonomod;
      modificacion["Email"]=emailmod;
      guardar[i]=modificacion;
      print("El nombre de la persona $cambio se ha modoficado: ");
      print(guardar);
    }
  }
}
void eliminar(){
  mostrar();
  print("Ingresa el nombre de la persona a eliminar: ");
  var nombreeli = stdin.readLineSync();
  for (int i=0; i < guardar.length; i++){
    var eliminacion = new Map();
    eliminacion = guardar[i];
    if (nombreeli == eliminacion['Nombre']){
    guardar.removeAt(i);
    print("La persona $nombreeli se ha eliminado ");
    print (guardar);
    } 
  } 
}