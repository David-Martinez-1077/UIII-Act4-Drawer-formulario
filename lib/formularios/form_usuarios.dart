import 'package:flutter/material.dart';
import 'package:myapp/formularios/detalles_empleados.dart';

class Usuarios extends StatefulWidget {
  const Usuarios({super.key});

  @override
  State<Usuarios> createState() => _UsuariosState();
}

class _UsuariosState extends State<Usuarios> {
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  final nombre = TextEditingController();
  final correo = TextEditingController();
  final contrasenia = TextEditingController();
  final telefono = TextEditingController();
  final tipo = TextEditingController();
  final fecha = TextEditingController();


  @override
  void dispose() {
    _productController.dispose();
    _productDesController.dispose();
    super.dispose();
  }


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepPurple.shade300,
            title: const Text("Formulario usuario"),
            centerTitle: true),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              MyTextField(
                  myController: _productController,
                  fieldName: "Id usuario",
                  myIcon: Icons.account_balance,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              //Use to add space between Textfields
              MyTextField(
                  myController: nombre,
                  fieldName: "Nombre",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: correo,
                  fieldName: "Correo",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: contrasenia,
                  fieldName: "Contraseña",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: tipo,
                  fieldName: "Tipo",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: telefono,
                  fieldName: "Teléfono",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: fecha,
                  fieldName: "Fecha de registro",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              myBtn(context),
              
            ],
          ),
        )
        );
  }
    OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              id: _productController.text,
              nombre: nombre.text,
              correo: correo.text,
              contrasenia: contrasenia.text,
              tipo: tipo.text,
              telefono: telefono.text,
              fecha: fecha.text,
            );
          }),
        );
      },
      child: Text(
        "Enviar Usuario".toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),
    );

    
  }

  
}

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  String fieldName;
  final IconData myIcon;
  Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(myIcon, color: prefixIconColor),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple.shade300),
          ),
          labelStyle: const TextStyle(color: Colors.deepPurple)),
    );
  }
}

