import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Formulario Tablas"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
               decoration: BoxDecoration(color: Colors.pink),
               accountName: Text("David Yair 1077"),
               accountEmail: Text("A.22308051281077@cbtis128.edu.mx"),
               currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                child: Text(
                  "DM",
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.white,
              ),
                
                
               ),


            )

          ],

        ),
      ),
      
    );
  }
}