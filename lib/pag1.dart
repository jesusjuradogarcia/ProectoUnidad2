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
            title: const Text("Carrito"),
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
            bottom: TabBar(
              tabs: [
                Tab(text: "Tenis", icon: Icon(Icons.sell)),
                Tab(text: "Sudaderas", icon: Icon(Icons.apple)),
                Tab(text: "Accesorios", icon: Icon(Icons.book)),
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
                    "Jesus Jurado",
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
                        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBIVERQSEhIYGRUYGBgSFRIUEhgSEhISGRgZGRgYGBocJC4lHCMrHxkZJzgnOC8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHBISHz0rJSs9NDE0PjY0NDE2NDQ0ND8xNjQ0NDQ0NDQ0NDQ0NDQxNjQ2NDQ0NDQ0MTE0NDQ0NjQ0NP/AABEIASwAqAMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAAAwIEBQYHAQj/xAA+EAACAQIEBAMFBgMGBwAAAAABAgADEQQSITEFQVFhBhMiBzJxgZEUUoKhscEjQtEXYnKSovAVJTNTY5Ph/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAECAwQF/8QAJREBAQACAgICAgIDAQAAAAAAAAECEQMhEjEEQRNRQnEysfAF/9oADAMBAAIRAxEAPwDjMREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQETIHhrLrXYUueRgTWI7UxqO2bKDcWMtaop7JmP95gBf8Ivb6mBDEkRQdzb5E/pJPJT/uD5qw/QGTo2t4l/hsAXOVGDtuFS5cjspsT8Bc9pbNQIF9CNsw1F+h6fO0aEMREgIiICIiAiIgIiICIiAntp6BKgJKNpMJhalWotKmpZ3IREUXLMdgJm6jU8NdcO6tUW61MYuqq53TC/DnU3P8uVdWjGDqUKRqj37FWFyMiMMpBA3vexvpY2tLjwt4cxfEaopUEARPfqm60aIJJuepOvpGp7AXE617N/pgajXJ031JJzMT1JO5lCrfQanoNTPonw/wCy7h2HVTWT7RU5vW/6d+eWmPTb45j3m6YbB06ahaVNUUaBURUUfICNmnyK9Bl1ZWUdSpUfnIws+xiJhOLeFOH4kEV8JSYn+cIEqD4OtmH1kbNPmzhXBGqL5r1PLUGyELmqVGB3RbjQHdiRqLC5BAu+L4aoXFVcpqFclSwscQ2pLFNixUDMP5iC25M3zxb4SbBZXpEthtFVm1akRsrnmOjfI62vzfjfEA7KlM3CnNmXmw2t8Ostqa2jveljjMNYBwpUN/KQQVPQX3B3B/pLKbWuKzPlV7qxUMga6HOq5xbpmLTVmluTCT0rx527liiJ6RPJk0IiICIiAiIgJUBPaZsQbX7HY9jKgLyZEWirM34Y4e9XFUiEJVHptUbQIiZ1ALk6AXt3OsxS3sAdh/szqVHD4bDcJw9IZXrVX+1YkWucoRmai3T+GCtutzzmkx2yyz0w1HAVK1RcMq/xKjeSFbSzG+YtzsoDMedlM7l4d4LRwWGTDUFsijVj71Rz7zseZJ/YDQCc49kzNicTUxFZf4lCmKbVBtVeq3pcj76rTZS1/UHFxe5ba+Ie0DCU6vlqtSoAbNUphcl+eXMwzW67dCZTLdrTHUjcolrgcWlamtWm2ZHAZWHMfseRHK0mqOFBYkAAEknQADcmVWSROVcW9omIaoRhVVKYNlZlzVHH3jfRb9LX7zJ+GvaB5jrSxYVSxyrWW6pmOwdSTl/xXt2G8t41HlGzeLqNN8DXSqAVZcuUnKGdiFRb8rsVF+V7z5wGE8ytToYVQwZlo0xYZqjMbZ3O/q36KNOU7v7UscaXDzb+ZslgbHVGCkHlZyh+U5P7O3/5klUU8z0kLKhIUM7slFbkX2FUm8tjNz/TPOyXv19svxn2dJhPKY1mZmF862VQ62LAIRtrpqb9pzvieBam2pDK1yrAWB11FuRF9R3E7dxo4jGYxqA8tXpI5SmalxUYZcyq1hcnS50sANN7c54/wHEijUqGldFYsWWpTqBLHW4Vidibzpyxx/HJ/Kd3/v6cnHyZ3lt/jeo0ciUGXD7AWGnMDU631kZXbnz0vp2nJY7pUcSvIekoIkaWIiJASoC8pmR4M9Ja6NXpGpSDAvTVyjOvMAjY8/lykybqLdRaimZ6iztNXA0K9VeG4bBUkwlej9opYqmGet7t6ddnax9LDKyG59Vr62PJ+IYFqNZ6LZcyMyNlIZcymxsRuJpIyuSBKf6Gbr4m4kWw1HNYjIKS2FvSyNvbnZ21mq4dJNxKu3kLTYXVWDA8wLEZT8tR8D0nRjrHG7nuObKXLPHV9Xtu3hPGNQ4JiXVjnxGK+zq1/UEFJCxB+GZb95rf/EKXmeVm9V8trG2bpfa8zvCKBbgFGonupi6ofsGUAE/PKPxCayeHN5TL6c/meYG75r726Tmn7jrsnquzeyvElsLVpk6JUuvZXUEj/MGPzmb8bVSvDsSRzTIf8LsEb8mM1b2fY/D4bC1a2JrJSWpVyIarqmfIi3y3OupP0m340Usbgqi0KiOlVHVKisGTOLgG46MNfgZW/wCS09Pn7G47IyoqlnYXCg2sOpP1+kqwWNFQsjKVZfeU66HmOv8A9lxieHMmIJqBkqKpptTYWIN7/v8AA6GU0cFevmW7O4FMKouSb6WA1JOmk07U6bN4z4o9XgWEZiSwrnDM25ORWZSb7nKgv3vNQ8GVSMRXBPqajoRptUpH9p0HxZwJ04IuEAvXU/bGA1IcE3UW3OUsvcr3nJOB+Ya10NiAbtyAOnLc9PhflJwvjlMr63tnyY/kwyxl71p0ZselFK5d2RqlB6FOsoLGnUqFSzED1ahdxcix6zC4vgr0eHVcOlUGzfaKjBiA2VPVTy22ygNe+pGwE1fF46s1YpVbNlJUGwAAHYaC8nRnCnVhmFrBiAVOjEjmCBl73PSbZ548mVyk9sOLjz4cJhb67Ypk1m9cA8N8NOATF46vXQvVeiooqrL6VB1BRjffWazgeGVa9RadFGZ22VVJJ79h32E3LxXwqtheEYTD11yv59ZyuZW0K6G6kjnMdabzLbJeHsHwBqjUqVCriClKpWNbEelAqC5AUZQTtuvznH641nU/D/hLGYTC4zGYhVpocDiUVWceZndBkuo2v0JvcgWnLK59RlMtNcNooiJm0JdYNlDqXvlzDNltmy39WW+l7XtLUStZMuqizcdA8V+L6NTyKfDkqYelQR0Rg5p1WFQqXByMfTdb7m5JJmopqZZpL/DrtNsO3Pn0vsNTmUXDoy+v3QNTa9l3OnPQbdpNwzgOJqUhWp0WdMxXMgz2YWuCq3I3G45y4o0rEqw1F1II2OxBE7uLGZSx5vLyXDKZNv8AZhRpqmN4VXysDUeoqnTzE9NNwNbgqVQ/iBHbLf2Z0fMv9pqeXf3Mq57dM+3+mc9qu6utZHZKiEMKikZ1cCwcdcwvmvoSXBFjr0Pw/wC0Oi4VMbalU280X+zOet9fK+Dabeozzs8csLY9bDPHOSxsHEPCeBr4ZMJVoBqVMgouZlZW5kOpDXNzfXW+susNWw9Ly8NRAstkFKkuYUlAPv5dEGh1NrnTUmX9GsrqGRlZTqGVgykdiNDJZm1Y/iHCcNXt59FHtoCygsOwO4ltQ4Vg8KDUSiiED3gt3+AY669JXxTj+Fw4Pm1kU/dLqGv8zpOf8b8apUb+GrVLe6BdKS/FmF2PcA/KaYYeXu6jHk5NdYzdZTinEFGevWay35at/dRRzY2sB8SbAEjmVdkDVaoRaYZmqlEvlUfdBO9hz0ubmwvaXeOxtSs+eo1yNFVRlRAdwq62vzJJJ01sABrfiDG2XylOp1fsOQ+f+95ryZ7/AKnpnw8fj77t9rPgyGpWdjz9R0BFy6nY6HTN9JmMRT1/O51ue99574ewJWnnYat6vhpoPkpP+e3KTYpZ0cPHrj3ftyfI5t8vjPpc+FfFT8Peo6UkfOoVg1wRlJIykbb6jnYdJjfFfivEY2or1ytlBVKaArTRTvYEkkmwub8hLDELvMdWtpp8Tfec+fV26uO7mqzHFvF+PxNIUcRiXdBY5TlUEjYtlALW73113mtMZW0oMwtdOMeRESqwJIp376HuN/2kYlayYip6cv8ADSwpbiZCgddd76/GbYe3Ny+nR/BNKrWw2LwyBvcXEIykgLVU2y35F1uv4ZiqAmR8F+LFweHrJ5Reo5DI1wEBC29fOw303vy3mNpPc3JuTqT1M9D4+/LLrrp5Py9eM1e+9rupQDLY6Hkw3H9fh2ExfkOHFMrmY2y5QTnuSBlXe+m36zLoZuPs5oA1sTUKjRKKK1tQS1UuAeX8n5SfmYYzDy+z/wA3lz/J+PfXtrfCfBPEWuyKcPm1Lmq1Bm7kU/Vf4gTN/wBnuMcWq8QZuoapXrD/AFvOlRPJ296Ry0ey6og/h16X/pKfoTLLFez7HqCVFN+yVLMf84UfnOvxHlTxj5447gsThKZatQdLaAshyFibD1D0n6zU+DYFq9XM2oBuxOoLG517aEn4W5ifTviNb4c9Lrf4Xt+85rxbhNBEavTpqjhkLFBlVgxKepRpfNUBvvpOji4/PVvrbl5+b8fljjO9bjCPTCqFGw+p6k9yZicXMtiDMPijPT5dSaeJw227rEYkTGVptPAeGJicSuHdymcOquLWFXIxQNfkWAB568t5reOosjsjAhlJVlO6sDYg/AieZyPa4fSxeRmSPIzOeuuPIiJVYEqEplQkxFTIZe0WlihlzSaa41jyYs1hXmZwzzXsO8y2Gqzv4c3k8/HtmvNsCegLE2vZQVW9ufqdR+KbN7OfECUnehXa3muHSo1goewUIbAADQWPUnqJo3FHdE1YqchapTUr7nvohNr39KMSD/Nblc4fh3FwzKjA3Y2ubaaE9NeQ+f15/kc35Mtb6+nd8T404sd67+31JE5H4d8dVqCinXU1aY0U5rVUHQE+8Ox+vKbbT9oeAIuTUU/danc/6SR+c47jXb5Rt81vxb4kGDp+hQ1Vh6FYnIo2DNbU67LoTlbUAEjWuM+0glSuFpFf/LWtcdwoJHzJ+U534g4pVRFeuzNUrM1Vs/qfLbIgc30tlYhbekVPkJ8deze/T3xF7QeJmoUGJIFgWQUqQpg6EBQVJtsdSTrLOn40xVbLRqFbEksyplapYZlB1sPUAdAOU1fH1MzeZe+bf05bEAC1rnlbnKMC1qtM9HX9RLY53G9XpGfHjlO526DiXmIxTz3CYrNSXS1ha3IW0IHa4Nu1pZ4mpPSz5Jljt4uHBcM7P0z3gngtbF4tRRqBDSy1jUYZshVgVsoIzHNbS42Osi9quHpJxKt5TA5wtRwpuKdVgQynuSM345rQxjoSUdluCpKsVJU7g25THVqpM4c729Pjx6QtIzKjKTMK6YRESEk9E8iBIpkyNLcGSK0vKplNsjRqTJUK9tz9ZgM5G09FTrNseXxc+XDMm5V6i1qVw1yU8htb2dUCKfxIFN+uccpo6OVYEbqb68iDMtwzG+W9z7jeluenJrcyP0JHORcXwR8zPTBZX9SlQW15jT6/OZZfuN8Gy4aurorrsRf4HmPlJZq+DqPR91gb+8pHovz1B35Xty5zKLxbTWnrzs9x+kvN2KZal9sk63BHUEfWYzxo2crUtbOfMt901FDlfkbj5SReLJzRvllP7y24rXWrRZFvdP4gBFvTc5h3sWY/i7SMp0tjZtrN5cYJf4i9mBPZRqT9AZRSos17ctySAB8SZdJZRZdyLM21x0HQfme20zk3WmV1GX+0qFADDYf3dhbblLSvVmPZ5GXm15brTmnDN7TVGluxnpc85GTMrW+OOnhM8gxKLkREBERASsGUQJMQnVpIpHSWwMkVpaVW4rpUXqZMlPQgObHccj8RfWWavJVqzSWMrMvpcigfvD85UMOeq/U/0kC1pWK8vLizsySGgeo+p/pPBTYG4YX+v7ayjz5Qa0XxJ5JKqk81A3yqoVb9bAC57yA0+/5Q1SQs8pbi1nlfYwEoYzxnkZMztaSPWMpJgzyVtWhERISREQEREBERAT288iSKw0qDyK8Xk7RpcB48yQXi8eSvinzwXkGaLx5HilLyktI7xeNraVEykmIlUkREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERED//Z'),
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
                    Icons.add,
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
                  title: const Text('Provedores'),
                  onTap: () {
                    Navigator.pushNamed(context, '/t3');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.sell,
                  ),
                  title: const Text('Carrito'),
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
                      'data:image/jpeg;base64,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',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Tenis Nike de 1300 pesos, color blanco con negro y hecho de algodon',
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
                      'data:image/jpeg;base64,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',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      '2 Sudaderas Jordan 100% Algodon color blanco de 6700',
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzR7hCBpzjdNzB4MqtNU8EqtCZZQrHSXLMow&usqp=CAU',
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Un gorro de la mundial de Mexico de 120, un estuche pequeño de la mundial de 120, y un termo para agua de la mundial Mexico de 80 pesos',
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
