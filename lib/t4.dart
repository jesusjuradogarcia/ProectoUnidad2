import 'package:flutter/material.dart';

class TabCuatro extends StatelessWidget {
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
        title: const Text("Ventas"),
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
                    hintText: "Ingrese el id de venta",
                    labelText: "Id Venta",
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
                    hintText: "Ingrese la fecha",
                    labelText: "Fecha",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.date_range,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese el id de producto",
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
                    hintText: "Ingrese la cantidad",
                    labelText: "Cantidad",
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
                    hintText: "Ingrese el precio",
                    labelText: "Precio",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.sell,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su tipo de pago",
                    labelText: "Tipo de Pago",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightGreen)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.credit_card,
                      color: Colors.lightGreen,
                    )),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese el id de cliente",
                    labelText: "Id Cliente",
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
                    onPressed: () => Navigator.pushNamed(context, '/t4'),
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
