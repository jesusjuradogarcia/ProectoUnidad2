import 'package:flutter/material.dart';

class ListItem {
  final String title;
  final String subtitle;
  final String avatarUrl;

  ListItem(this.title, this.subtitle, this.avatarUrl);
}

class PantallaCuatro extends StatelessWidget {
  final items = [
    ListItem('Brandon', 'Sucursal 1',
        'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/h1.jpg'),
    ListItem('Sebastian', 'Sucursal 1',
        'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/h2.jpg'),
    ListItem('Frida', 'Sucursal 2',
        'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/m1.jpg'),
    ListItem('Esteban', 'Sucursal 2',
        'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/h3.jpg'),
    ListItem('Miriam', 'Sucursal 3',
        'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/m2.jpg'),
    ListItem('Alejandra', 'Sucursal 3',
        'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/m3.jpg'),
    ListItem('Alex', 'Sucursal 4',
        'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/h4.jpg'),
    ListItem('Dereck', 'Sucursal 4',
        'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/h5.jpg'),
    ListItem('Aylin', 'Sucursal 5',
        'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/m4.jpg'),
    ListItem('Sharon', 'Sucursal 5',
        'https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/m5.jpg'),
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
        title: const Text("Vendedores 👥"),
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
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(item.avatarUrl),
            ),
            title: Text(item.title),
            subtitle: Text(item.subtitle),
          );
        },
      ),
    );
    Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/178/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/178/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/178/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/178/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/178/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
