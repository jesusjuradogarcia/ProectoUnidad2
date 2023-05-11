import 'package:flutter/material.dart';

class TabDos extends StatelessWidget {
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
        title: const Text("Producto"),
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
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                    hintText: "Ingrese el id del producto",
                    labelText: "Id Producto",
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
                    hintText: "Ingrese el nombre del producto",
                    labelText: "Nombre",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.abc,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese el precio",
                    labelText: "Precio",
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
                    hintText: "Ingrese la cantidad",
                    labelText: "Cantidad",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.format_list_numbered,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese el tipo",
                    labelText: "Tipo",
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
                    hintText: "Ingrese el origen",
                    labelText: "Origen",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.location_searching,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese la caducacion",
                    labelText: "Caducacion",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.date_range,
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
                    onPressed: () => Navigator.pushNamed(context, '/t2'),
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
