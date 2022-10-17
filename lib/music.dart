import 'package:flutter/material.dart';

class Music {
  String title;
  String image;
  String description;
  String audioURL;
  Music(this.title, this.image, this.description, this.audioURL);
}

const List songs = [
  {
    "image": "https://i.scdn.co/image/ab67616d0000b2737636e1c9e67eaafc9f49aefd",
    "title": "Without Me",
    "description": "Halsey"
  }
];
