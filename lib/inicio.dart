import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          tooltip: 'Inicio',
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        title: const Text("Fruteria Don Manuel"),
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
            child: Image.network(
              'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/banner1.gif',
            ),
          ),
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.all(25),
            child: Card(
              child: Text(
                textAlign: TextAlign.center,
                'Bienvenido a la web de la Fruteria Don Manuel donde puedes ver todas la frutas que manejamos y sus increibles precios junto con ofertar y pedidos a linea',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000000),
                ),
              ),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xffba9f00), width: 1)),
              elevation: 20,
              shadowColor: Color(0xffba9f00),
              margin: EdgeInsets.all(20),
            ),
          ),
          Container(
            child: Image.network(
              'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/gif3.gif',
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffffda00), width: 3)),
            child: ElevatedButton(
              child: const Text('Noticias 📄'),
              onPressed: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/1');
              },
            ),
          ),
          Container(
              child: Image.network(
                  'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/gif4.gif')),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffffda00), width: 3)),
            child: ElevatedButton(
              child: const Text('Perfil 👤'),
              onPressed: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/2');
              },
            ),
          ),
          Container(
            child: Image.network(
              'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/gif1.gif',
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffffda00), width: 3)),
            child: ElevatedButton(
              child: const Text('Catalogo 🍉'),
              onPressed: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/3');
              },
            ),
          ),
          Container(
            child: Image.network(
              'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/gif5.gif',
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffffda00), width: 3)),
            child: ElevatedButton(
              child: const Text('Vendedores 👥'),
              onPressed: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/4');
              },
            ),
          ),
        ],
      )),
    );
  }
}
