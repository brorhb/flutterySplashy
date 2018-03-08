import 'package:flutter/material.dart';
import '../components/PhotoHero.dart';

class PhotoRoute extends StatefulWidget {
  PhotoRoute({Key key, this.title, this.text, this.url}) : super(key: key);
  final String title;
  final String text;
  final String url;
  _PhotoRouteState createState() => new _PhotoRouteState(
    text: text,
    url: url,
  );
}

class _PhotoRouteState extends State<PhotoRoute> {
  _PhotoRouteState({Key key, this.text, this.url});
  final String text;
  final String url;

  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Logo page'),
      ),
      body: new Container(
        // The blue background emphasizes that it's a new route.
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            new Container (
              child: new PhotoHero(
                photo: url,
                width: 320.0,
                mode: 'contain',
              ),
            ),
            new Row(
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  child: new Text(text),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}