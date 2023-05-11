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
        title: const Text("INNOVASPORT"),
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
        backgroundColor: Colors.blue[500],
      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: Color(0xffff3535)),
              accountName: Text(
                "Jesus Jurado Garcia",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "jesusjuradogarcia@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBIVERQSEhIYGRUYGBgSFRIUEhgSEhISGRgZGRgYGBocJC4lHCMrHxkZJzgnOC8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHBISHz0rJSs9NDE0PjY0NDE2NDQ0ND8xNjQ0NDQ0NDQ0NDQ0NDQxNjQ2NDQ0NDQ0MTE0NDQ0NjQ0NP/AABEIASwAqAMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAAAwIEBQYHAQj/xAA+EAACAQIEBAMFBgMGBwAAAAABAgADEQQSITEFQVFhBhMiBzJxgZEUUoKhscEjQtEXYnKSovAVJTNTY5Ph/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF/8QAJREBAQACAgICAgIDAQAAAAAAAAECEQMhEjEEQRNRQnEysfAF/9oADAMBAAIRAxEAPwDjMREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQETIHhrLrXYUueRgTWI7UxqO2bKDcWMtaop7JmP95gBf8Ivb6mBDEkRQdzb5E/pJPJT/uD5qw/QGTo2t4l/hsAXOVGDtuFS5cjspsT8Bc9pbNQIF9CNsw1F+h6fO0aEMREgIiICIiAiIgIiICIiAntp6BKgJKNpMJhalWotKmpZ3IREUXLMdgJm6jU8NdcO6tUW61MYuqq53TC/DnU3P8uVdWjGDqUKRqj37FWFyMiMMpBA3vexvpY2tLjwt4cxfEaopUEARPfqm60aIJJuepOvpGp7AXE617N/pgajXJ031JJzMT1JO5lCrfQanoNTPonw/wCy7h2HVTWT7RU5vW/6d+eWmPTb45j3m6YbB06ahaVNUUaBURUUfICNmnyK9Bl1ZWUdSpUfnIws+xiJhOLeFOH4kEV8JSYn+cIEqD4OtmH1kbNPmzhXBGqL5r1PLUGyELmqVGB3RbjQHdiR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'),
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
              title: const Text('Productos'),
              onTap: () {
                Navigator.pushNamed(context, '/t2');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.coffee,
              ),
              title: const Text('Carrito'),
              onTap: () {
                Navigator.pushNamed(context, '/t3');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.sell,
              ),
              title: const Text('favoritos'),
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
              'https://mir-s3-cdn-cf.behance.net/project_modules/disp/f0d74b17842445.562c7b912e1e0.gif',
            ),
          ),
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.all(25),
            child: Card(
              child: Text(
                textAlign: TextAlign.center,
                'Bienvenido, Tenemos los mejores productos para ti y con descuentos en calzado y accesorios para podre disfrutar con tus amigos',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000000),
                ),
              ),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xff870101), width: 1)),
              elevation: 20,
              shadowColor: Color(0xff9a0000),
              margin: EdgeInsets.all(20),
            ),
          ),
          Container(
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcDOfifpXMcEX0Fkk_upoL-PlWFQiFjVbYhQ&usqp=CAU',
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff920303), width: 3)),
            child: ElevatedButton(
              child: const Text('Carrito'),
              onPressed: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/1');
              },
            ),
          ),
          Container(
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI0YWe_adh9yex6cz1gDJwdlYAhN7zV3WBpw&usqp=CAU')),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffa60000), width: 3)),
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
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcDOfifpXMcEX0Fkk_upoL-PlWFQiFjVbYhQ&usqp=CAU',
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffa40101), width: 3)),
            child: ElevatedButton(
              child: const Text('Productos'),
              onPressed: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/3');
              },
            ),
          ),
          Container(
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcJewKFOHxxicSd4LeD_o3cJXeaoFsyXZZcA&usqp=CAU',
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffbc0000), width: 3)),
            child: ElevatedButton(
              child: const Text('Provedores'),
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
