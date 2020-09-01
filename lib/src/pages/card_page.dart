import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipy1(),
          SizedBox(height: 30.0),
          cardType2(),
          SizedBox(height: 30.0),
          _cardTipy1(),
          SizedBox(height: 30.0),
          cardType2(),
          SizedBox(height: 30.0),
          _cardTipy1(),
          SizedBox(height: 30.0),
          cardType2(),
          SizedBox(height: 30.0),
          _cardTipy1(),
          SizedBox(height: 30.0),
          cardType2(),
          SizedBox(height: 30.0),
          _cardTipy1(),
          SizedBox(height: 30.0),
          cardType2(),
          SizedBox(height: 30.0),
          _cardTipy1(),
          SizedBox(height: 30.0),
          cardType2(),
          SizedBox(height: 30.0),
          _cardTipy1(),
          SizedBox(height: 30.0),
          cardType2(),
        ],
      ),
    );
  }

  Widget _cardTipy1() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
              title: Text('Im a Card'),
              subtitle: Text(
                  'This is a long description about nothing that doesnt make sense'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Cancelar'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text('Ok'),
                  onPressed: () {},
                )
              ],
            )
          ],
        ));
  }

  Widget cardType2() {
    final card = Container(
        //clipBehavior: Clip.antiAlias,
        child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        //Image(
        //  image: NetworkImage(
        //     'https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
        //),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Text('I dont know what to put'))
      ],
    ));
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
