import 'package:flutter/material.dart';
//import 'package:hello_flutter/contact.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Todo Flutter',
      theme: new ThemeData(
        primaryColor: Colors.blue[700],
        backgroundColor: Colors.black,
      ),
      home: new MyHomePage(title: 'Ispótifai'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ListView(
          children:
          getAlbums()
      ),
    );
  }

  List<Widget> getAlbums() {
    List<String> albums = [
      '2018 • Tranquility Base',
      '2013 • AM',
      '2011 • Suck It and See',
      '2009 • Humbug',
      '2007 • Favorite Worst Nightmare',
      '2006 • Whatever People Say Im, That\'s What I\'m Not'
    ];

    List<Widget> listTiles = new List<Widget>();

    albums.forEach((album) =>
        listTiles.add(
            new ListTile(
                key: new Key(album),
                leading: new Icon(Icons.music_note, color: Colors.black,),
                title: new Text('Arctic Monkeys',
                  style: new TextStyle(
                      fontWeight: FontWeight.bold),),
                subtitle: new Text(album, style: new TextStyle(
                    color: Colors.grey[800]))
            )
        )
    );

    return listTiles;
  }
}
