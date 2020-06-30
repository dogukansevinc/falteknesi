import 'package:flutter/material.dart';

class Option {
  Icon icon;
  String title;
  String subtitle;

  Option({this.icon, this.title, this.subtitle});
}

final options = [
  Option(
    icon: Icon(Icons.add_shopping_cart, size: 40.0),
    title: '1 Kredi',
    subtitle: 'Google Play üzerinden 3.99 TL ye alabilirsiniz.',
  ),
  Option(
    icon: Icon(Icons.add_shopping_cart, size: 40.0),
    title: '3 Kredi',
    subtitle: 'Google Play üzerinden 7.99 TL ye alabilirsiniz.',
  ),
  Option(
    icon: Icon(Icons.add_shopping_cart, size: 40.0),
    title: '5 Kredi',
    subtitle: 'Google Play üzerinden 11.99 TL ye alabilirsiniz.',
  ),
  Option(
    icon: Icon(Icons.add_shopping_cart, size: 40.0),
    title: '10 Kredi',
    subtitle: 'Google Play üzerinden 20.99 TL ye alabilirsiniz.',
  ),
  Option(
    icon: Icon(Icons.add_shopping_cart, size: 40.0),
    title: '50 Kredi',
    subtitle: 'Google Play üzerinden 99.99 TL ye alabilirsiniz.',
  ),
  Option(
    icon: Icon(Icons.add_shopping_cart, size: 40.0),
    title: '100 Kredi',
    subtitle: 'Google Play üzerinden 199.99 TL ye alabilirsiniz.',
  ),
];
