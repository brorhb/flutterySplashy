import 'package:flutter/material.dart';
import '../components/HeroAnimation.dart';

class MainRoute extends StatefulWidget {
  MainRoute({Key key, this.title}) : super(key: key);
  final String title;
  _MainRouteState createState() => new _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {

  final _suggestions = [
    'https://images.unsplash.com/photo-1472152083436-a6eede6efad9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a52890683599a39bd5b99b0487c642dc&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1474436799594-1974f1add7ad?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2b0739606036e0f6451af38f71bf91aa&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1490237014491-822aee911b99?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c6c99dec73e55acf9dbf720ec37f6b0a&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1500067318459-77a2667d9c54?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d14669faa1fcc7c38e922e4e9fedfcf8&auto=format&fit=crop&w=800&q=60'
  ];

  Widget _children (i) {
    return new HeroAnimation(
      url: _suggestions[i],
      text: 'Photo number ${i + 1}',
      height: 100.0,
      width: 320.0,
    );
  }


  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Recent'),
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView.builder(
          itemBuilder: (context, i) {
            if (i < _suggestions.length) {
              return _children(i);
            }
          },
        ),
      ),
    );
  }
}