import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
                "Contested Territories",
                style: TextStyle(
                    fontFamily: "Luckiest-Guy",
                  color: Colors.black,
                ),
            ),
            backgroundColor: Colors.transparent,
            flexibleSpace: Image(
              image: AssetImage('assets/images/banner.png'),
              fit: BoxFit.cover,
            ),
          ),
          drawer: Drawer(
            backgroundColor: Colors.lightBlue,
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                    accountName: Text("KoiNip"),
                    accountEmail: Text("girkir"),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/squareBloonariusBanner.webp"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                ListTile(
                  title: Text("Create tile"),
                  trailing: Icon(Icons.hexagon_outlined),
                ),
                ListTile(
                  title: Text("Create strategy"),
                  trailing: Icon(Icons.lightbulb),
                ),
                Divider(),
                ListTile(
                  title: Text("View your tiles"),
                  trailing: Icon(Icons.hexagon),
                ),
              ],
            )
          ),
          body: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage("assets/images/ctmap.jpg"),
                      ),
                    ),
                    /*TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a search term',
                      ),
                    ),*/
                    Text("Hello world"),
                    TextButton(
                      onPressed: () {},
                      child: Text("Button"),
                      //style: ButtonStyle,
                    ),
                    Container(
                      color: Colors.cyan,
                      padding: EdgeInsets.all(30.0),
                      child: Text("Memes"),
                    ),
                    Container(
                      child: Text("Credits:\nFoam Engineer banner by u/Dread_Lead\nBloonarius banner by u/betapotata")
                    ),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}