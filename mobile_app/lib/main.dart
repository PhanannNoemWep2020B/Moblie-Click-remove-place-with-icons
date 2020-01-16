
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(Mobile());
class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
        appBar: AppBar(
          title: Text("Basic Mobile Apps"),
          actions: <Widget>[
           IconButton(
             icon: Icon(Icons.people, size: 25.0, color: Colors.white,),),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.favorite),
              ),
              Tab(
                icon: Icon(Icons.share),
              ),
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://pbs.twimg.com/media/Dscth-6U4AEzDMq.jpg"),
                    
                  ),
                ),
                decoration: BoxDecoration(color: Colors.green),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.phone)
              ),
            ],

          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Image.network("https://i.pinimg.com/736x/9f/fd/d9/9ffdd99a1ee1ef6653b383aec27a1513.jpg",
            fit: BoxFit.cover,
            height: 70.0,
            ),
            Image.network("https://i.pinimg.com/736x/8b/00/1c/8b001c050963ecf1b8f433389b19ed5f.jpg",
            fit: BoxFit.cover,
            height: 70.0,
            ),
            Image.network("https://pbs.twimg.com/media/CA-fSZ_VIAATeYa.jpg",
              fit: BoxFit.cover,
              height: 80.0,
            ),
            Image.network("https://i.imgur.com/MIgcwnV.jpg",
            fit: BoxFit.cover,
            height: 70.0,
            ),
              
          ],
        ),
        //Footer
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(icon: Icon(Icons.home, color: Colors.green,),
                ),
                IconButton(icon: Icon(Icons.thumb_up, color: Colors.redAccent,),),
                IconButton(icon: Icon(Icons.thumb_down, color: Colors.redAccent,),),
                IconButton(icon: Icon(Icons.share, color: Colors.blue,),),
              ],
            ),
          ),
        ),
        floatingActionButton: SpeedDial(
          marginRight: 18,
          marginBottom: 20,
         animatedIcon: AnimatedIcons.menu_close,
         animatedIconTheme: IconThemeData(size: 22.0),
         overlayColor: Colors.greenAccent,
         overlayOpacity: 0.3,
         children: [
           SpeedDialChild(
             child: Icon(Icons.message),
             backgroundColor: Colors.orange,
             label: 'Message',
             labelStyle: TextStyle(fontSize: 17.0, color: Colors.white),
             labelBackgroundColor: Colors.orange,
             onTap: () => print('message'),
           ),
           SpeedDialChild(
             child: Icon(Icons.share),
             backgroundColor: Colors.red,
             label: 'Shareing',
             labelStyle: TextStyle(fontSize: 17.0, color: Colors.white),
              labelBackgroundColor: Colors.red,
             onTap: () => print("share"),
           ),
           SpeedDialChild(
             child: Icon(Icons.attach_file),
             backgroundColor: Colors.green,
             label: 'Attach File',
             labelStyle: TextStyle(fontSize: 17.0, color: Colors.white),
             labelBackgroundColor: Colors.green,
             onTap: () => print("")
           ),
           SpeedDialChild(
             child: Icon(Icons.favorite),
             backgroundColor: Colors.blue,
             label: 'LOve you',
             labelStyle: TextStyle(fontSize: 17.0, color: Colors.white),
             labelBackgroundColor: Colors.blue,
             onTap: () => print("favorite")
           ),
           SpeedDialChild(
             child: Icon(Icons.person),
             backgroundColor: Colors.red,
             label: 'Firends',
             labelStyle: TextStyle(fontSize: 17.0, color: Colors.white),
             labelBackgroundColor: Colors.red,
             onTap: () => print("person")
           ),
         ],
        ),
      ),
      ),
    );
  }
}