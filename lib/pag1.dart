import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.home),
              tooltip: 'Inicio',
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            title: const Text("Noticias 📄"),
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
            bottom: TabBar(
              tabs: [
                Tab(text: "Rebajas", icon: Icon(Icons.sell)),
                Tab(text: "Frutas", icon: Icon(Icons.apple)),
                Tab(text: "Recetas", icon: Icon(Icons.book)),
                Tab(text: "Horarios", icon: Icon(Icons.lock_clock)),
              ],
            ),
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
          body: TabBarView(
            children: [
              // Contenido para la primera pestaña
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/1.png',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'En nuestras fruterias encuentras un 45% de descuento todos los Martes y Miercoles sin EXEPCION asi que visitanos en estos dias para llevar tu fruta mas barata que nunca 😉',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ),
              // Contenido para la segunda pestaña
              Container(
                padding: EdgeInsets.all(16.0),
                child: ListView(
                  children: <Widget>[
                    Image.network(
                      'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/2.png',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Ven para tener las frutas mas frescas y baratas de todo el mercado, todo en Fruterias Don Manuel tu Fruteria de confianza ',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ),
              // Contenido para la tercera pestaña
              Container(
                padding: EdgeInsets.all(16.0),
                child: ListView(
                  children: <Widget>[
                    Image.network(
                      'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/3.png',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'En nuestras Fruterias encuentras los mejores libros de recetas, dados por los mejores chefs del mundo y aprobado por miles de paladaras, incluso los mas exigentes jeje, esperamos que vengas a nuestras sucursales para comprobarlo por ti mismo ;>',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: ListView(
                  children: <Widget>[
                    Image.network(
                      'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/4.png',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Visitanos en nuestros horarios flexibles y con gran facilidad para todas personas, ya que pensamos en ti al momento de abrir nuestas tiendas',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
