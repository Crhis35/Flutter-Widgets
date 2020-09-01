import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar Page'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://dam.menshealthlatam.com/wp-content/uploads/2018/11/STANLEE.jpg'),
                radius: 20.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.brown,
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQEjLLFtP0c-eM81doPvo4_FQ2vpMds3krveQ&usqp=CAU'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ));
  }
}
