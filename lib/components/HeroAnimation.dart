import 'package:flutter/material.dart';
import 'PhotoHero.dart';
import '../routes/PhotoRoute.dart';

class HeroAnimation extends StatelessWidget {
  HeroAnimation({Key key, this.url, this.text, this.width, this.height});

  final String url;
  final String text;
  final double width;
  final double height;

  Widget build(BuildContext context) {

    return new Center(
      child: new PhotoHero(
        photo: url,
        width: width,
        height: height,
        mode: 'cover',
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute<Null>(
              builder: (BuildContext context) {
                print(context);
                return new PhotoRoute(
                  url: url,
                  title: 'Photo Route',
                  text: text,
                );
              }
          ));
        },
      ),
    );
  }
}