import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero({Key key, this.photo, this.onTap, this.width, this.mode, this.height}) : super(key : key);

  final String photo;
  final VoidCallback onTap;
  final double width;
  final double height;
  final String mode;

  Widget build (BuildContext context) {
    return new SizedBox(
      width: width,
      height: height,
      child: new Hero(
        tag: photo,
        child: new Material(
          color: Colors.transparent,
          child: new InkWell(
            onTap: onTap,
            child: new Image.network(
              photo,
              fit: mode == 'cover' ? BoxFit.cover : BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}