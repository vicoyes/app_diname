import 'dart:async' show Future;
import 'dart:convert';
import 'package:http/http.dart' as http;


String url = 'https://app-nombre.firebaseio.com/masculino.json';

class Name {
  final String id;
  final String nombre;
  final String origen;
  final String significado;

  Name({this.id, this.nombre, this.origen, this.significado});

  Future<List<Name>> loadData() async {
   
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      List<Name> names = [];

      for (var i in json) {

        Name name = Name(id:i['id'], nombre:i['nombre'], origen:i['origen'], significado:i['signifcado']);
        
        names.add(name);
        
      }

      print(names.length);
      return names;


    } else {
      throw Exception('Failed to load Data');
    }

  }

}


final nombre = new Name(); 


// class Name {
//   String nombre;
//   String origen;
//   String descripcion;

//   String url = 'https://app-nombre.firebaseio.com/masculino.json';
//   List<dynamic> data = [];

//   Name() {
//     loadData();
//   }

//   Future<List<dynamic>> loadData() async {
//     final response =
//         await http.get(url);

//     if (response.statusCode == 200) {
//       final json = jsonDecode(response.body);


//     } else {
//       throw Exception('Failed to load Data');
//     }

//     return data;
//   }
// }

// final dataProvadier = new Name();