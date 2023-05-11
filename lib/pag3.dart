import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  List<Image> images = [
    Image.network(
      "https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/uvas.jpg",
    ),
  ];
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
        title: const Text("Catalogo 🍉"),
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
          child: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 200.0,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/platano.jpg',
                  ),
                  const Text(
                    'Platano',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/uvas.jpg',
                  ),
                  const Text(
                    'Uvas',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/Manzana.png',
                  ),
                  const Text(
                    'Manzana',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/sandia.jpg',
                  ),
                  const Text(
                    'Sandia',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/melon.png',
                  ),
                  const Text(
                    'Melon',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/naranja.jpg',
                  ),
                  const Text(
                    'Naranja',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/kiwi.jpg',
                  ),
                  const Text(
                    'Kiwi',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/granada.jpg',
                  ),
                  const Text(
                    'Granada',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/lechuga.jpg',
                  ),
                  const Text(
                    'Lechuga',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/zanahoria.jpg',
                  ),
                  const Text(
                    'Zanahoria',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
        ],
      )),
    );
  }
}
