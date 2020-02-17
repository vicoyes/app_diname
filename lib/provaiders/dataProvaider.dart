class Name {
  final String id;
  final String nombre;
  final String origen;
  final String significado;

  Name({this.id, this.nombre, this.origen, this.significado});

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      id: json['id'] as String,
      nombre: json['nombre'] as String,
      origen: json['origen'] as String,
      significado: json['signifcado'] as String,
    );
  }
}


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
