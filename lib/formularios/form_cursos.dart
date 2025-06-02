import 'package:flutter/material.dart';
import 'package:myapp/formularios/detalles_cursos.dart';


class Cursos extends StatefulWidget {
  const Cursos({super.key});

  @override
  State<Cursos> createState() => _CursosState();
}

class _CursosState extends State<Cursos> {
  @override
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
            title: const Text("Formulario cursos"),
            centerTitle: true),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              MyTextField(
                  myController: _productController,
                  fieldName: "Id Curso",
                  myIcon: Icons.account_balance,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              //Use to add space between Textfields
              MyTextField(
                  myController: nombre,
                  fieldName: "Título",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: correo,
                  fieldName: "Descripción",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: contrasenia,
                  fieldName: "Instructor id",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: tipo,
                  fieldName: "Precio",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: telefono,
                  fieldName: "Categoría",
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: fecha,
                  fieldName: "Fecha de creación",
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
        "Enviar curso".toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),
    );

    
  }

  
}

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

