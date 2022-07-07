import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Over Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => InicioSesion(),
        '/menu': (context) => MainMenu(),
        '/usuario': (context) => Playlist(),
        '/recompensas': (context) => Best(),
        '/texto': (context) => Radio(),
        '/compras': (context) => ListMusic(),
      },
      initialRoute: '/',
    );
  }
}

class InicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Inicio de sesión')),
        body: Builder(
          builder: (context) => Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: new Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Container(width: 200, height: 150, child: Image.network('https://indiefy.net/static/img/landing/distribution/icons/apple_music_icon.png')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Usuario'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Contraseña'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/menu'),
                    child: Text('Ingresar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Menú principal')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/usuario'),
                    child: Text('Your PLaylist'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/recompensas'),
                    child: Text('Best Playlist'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/texto'),
                    child: Text('Radio'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/compras'),
                    child: Text('Music List'),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}

class Playlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Playlist'),
      ),
      body: Builder(
        builder: (context) => Container(
          child: new Column(
            children: [
              Padding(padding: const EdgeInsets.only(right: 0, top: 45, bottom: 0), child: Text("Music:", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
              Padding(padding: const EdgeInsets.only(right: 0, top: 15, bottom: 0), child: Text("Nightcore - Blackout          2:30", textAlign: TextAlign.start, style: TextStyle(fontSize: 20))),
              Padding(padding: const EdgeInsets.only(right: 0, top: 15, bottom: 0), child: Text("SEKAI NO OWARI - Habit        4:45", textAlign: TextAlign.start, style: TextStyle(fontSize: 20))),
              Padding(padding: const EdgeInsets.only(right: 0, top: 15, bottom: 0), child: Text("Metalica - Master Of Puppets  4:45", textAlign: TextAlign.start, style: TextStyle(fontSize: 20))),
            ],
          ),
        ),
      ),
    );
  }
}

class Best extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Best Playlist'),
      ),
      body: Builder(
        builder: (context) => Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: new Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(width: 200, height: 150, child: Image.network('https://indiefy.net/static/img/landing/distribution/icons/apple_music_icon.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: Text("Metalica - Master Of Puppets"),
              ),
              Padding(padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0), child: Image.network('https://cdn.discordapp.com/attachments/545348312505516045/994710636787400836/Pngtreemusic_player_png_overlay_7552664.png')),
            ],
          ),
        ),
      ),
    );
  }
}

class Radio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
      ),
      body: Builder(
        builder: (context) => Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: new Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(width: 200, height: 150, child: Image.network('https://static.vecteezy.com/system/resources/previews/001/207/882/original/radio-png.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: Text("FM - 89.7"),
              ),
              Padding(padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0), child: Image.network('https://cdn.discordapp.com/attachments/545348312505516045/994710636787400836/Pngtreemusic_player_png_overlay_7552664.png')),
            ],
          ),
        ),
      ),
    );
  }
}

class ListMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music List'),
      ),
      body: Container(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.audiotrack),
                title: const Text('List 1'),
                subtitle: Text(
                  'Mi primera lista de musica',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  leading: Icon(Icons.arrow_right),
                  title: const Text('Metalica - Master of Puppets'),
                  subtitle: Text(
                    '8:35',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  leading: Icon(Icons.arrow_right),
                  title: const Text('Papa Roach - To Be Loved'),
                  subtitle: Text(
                    '3:07',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  leading: Icon(Icons.arrow_right),
                  title: const Text('Out of Control · Zebrahead · MAN WITH A MISSION'),
                  subtitle: Text(
                    '3:20',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
