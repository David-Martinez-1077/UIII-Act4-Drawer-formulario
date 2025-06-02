import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details(
      {Key? key, required this.id, required this.nombre, required this.correo, required this.contrasenia, required this.tipo, required this.telefono, required this.fecha})
      : super(key: key);

  String id, nombre, correo, contrasenia, tipo, telefono, fecha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Detalles",
          ),
          //Pop and navigate to previous screen
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Container(
          padding: const EdgeInsets.all(4.0),
          child: ListView(
            children: [
              //Dynamic Tile
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.bookmark_added_rounded,
                      color: Colors.blueAccent),
                  onPressed: () {},
                ),
                title: Text(
                  nombre,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Correo: $correo'),
                  Text('Teléfono: $telefono'),
                  Text('Tipo: $tipo'),
                  Text('Fecha: $fecha'),
                ],
              ),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
              ),

              //Static Tiles for design
              
              
            ],
          ),
        ));
  }
}