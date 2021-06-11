import 'dart:io';

void main() {
  final sen = new sensores();
  sen.datos();
  sen.imprimir();
 
  }

class sensores {

  List leer=[];
  datos() {
    print("Registro a almacenar: ");
    var regi =stdin.readLineSync();
    int regi1 = int.parse(regi);
    for (int i = 0; i < regi1; i++) {
      print('Id del sensor: ');
      var id=stdin.readLineSync();
      print('Valor: ');
      var valor=stdin.readLineSync();
      print('Fecha de registro: ');
      var fecha=stdin.readLineSync();
      Map<String, dynamic> mapi={
        'id_sensor':id, 'sen_val':valor, 'regi_fecha':fecha 
      };
      leer.add(mapi);

    }

  }    
  imprimir() {
  print(leer);
  }
}



