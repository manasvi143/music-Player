import 'package:flutter/material.dart';

enum Gener { pop, jazz, hiphop, rap, rock }

const generColor = {
  Gener.pop: Color.fromARGB(168, 196, 29, 18),
  Gener.hiphop: Color.fromARGB(255, 172, 157, 23),
  Gener.jazz: Color.fromARGB(255, 26, 106, 171),
  Gener.rap: Color.fromARGB(255, 42, 188, 47),
  Gener.rock: Color.fromARGB(255, 161, 34, 183),
};
Map<Gener, Image> generImage = {
  Gener.hiphop: Image.asset('assets/images/hiphop.jpg'),
  Gener.jazz: Image.asset('assets/images/jazz.jpg'),
  Gener.pop: Image.asset('assets/images/pop.jpg'),
  Gener.rap: Image.asset('assets/images/rap.jpg'),
  Gener.rock: Image.asset('assets/images/rock.jpg'),
};

class Audio {
  Audio({required this.gener, required this.title});
  final String title;
  final Gener gener;
}
