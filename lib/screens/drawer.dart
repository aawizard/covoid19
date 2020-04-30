import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Colors.red[700], Colors.redAccent]),
            ),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius:50,
                  backgroundImage: AssetImage('images/earth.jpg'),

                ),
                Center(
                    child: Text(
                  'Stay Safe',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                )),
              ],
            ),
          ),
          CustomTiles(
            tileName: 'Symptoms',
            route: '/symptoms',
            image: 'mask',
          ),
          CustomTiles(
            tileName: 'Wash Hands',
            route: '/washHands',
            image: 'wash_hands',
          ),
        ],
      ),
    );
  }
}

class CustomTiles extends StatelessWidget {
  const CustomTiles(
      {@required this.tileName, @required this.route, this.image});
  final String tileName;
  final String route;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage('images/$image.png'),
        backgroundColor: Colors.white,
      ),
      contentPadding: EdgeInsets.all(5),
      title: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: Text(tileName,
            style: TextStyle(
              fontSize: 20,
            )),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      trailing: Icon(Icons.arrow_right),
    );
  }
}
