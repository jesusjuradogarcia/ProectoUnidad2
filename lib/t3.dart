import 'package:flutter/material.dart';

class TabTres extends StatelessWidget {
  const TabTres({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Regresar',
          onPressed: () {
            Navigator.pushNamed(context, '/2');
          },
        ),
        title: const Text("Licuados"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.lightGreen[500],
      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: Colors.lightGreen),
              accountName: Text(
                "Aaron Mota",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "AaronMR@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/user.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.people,
              ),
              title: const Text('Usuario'),
              onTap: () {
                Navigator.pushNamed(context, '/t1');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.apple,
              ),
              title: const Text('Producto'),
              onTap: () {
                Navigator.pushNamed(context, '/t2');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.coffee,
              ),
              title: const Text('Licuados'),
              onTap: () {
                Navigator.pushNamed(context, '/t3');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.sell,
              ),
              title: const Text('Ventas'),
              onTap: () {
                Navigator.pushNamed(context, '/t4');
              },
            ),
          ],
        ),
      ),
      body: Center(
          child: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                key: Key('TabTres'), // Agrega una clave única
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                    hintText: "Ingrese el id del licuado",
                    labelText: "Id Licuado",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.numbers,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su base",
                    labelText: "Base",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.water,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese sus frutas",
                    labelText: "Frutas",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.apple,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese sus verduras",
                    labelText: "Verduras",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.apple,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese sus extras",
                    labelText: "Extras",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.add,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su enduzalte",
                    labelText: "Endulzante",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.add,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese el tamaño",
                    labelText: "Tamaño",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.numbers,
                      color: Colors.lightGreen,
                    )),
              )),
          TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('!Felicidades!'),
                content: const Text('Su informacion se ah enviado con exito'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/t3'),
                    child: const Text('Cancelar'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/2'),
                    child: const Text('Ok'),
                  ),
                ],
              ),
            ),
            child: const Text('Enviar Informacion'),
          ),
        ],
      )),
    );
  }
}
