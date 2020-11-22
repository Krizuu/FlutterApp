import 'package:flutter/material.dart';

class Games extends StatelessWidget {
  final List<String> games;

  Games(this.games);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Column(
      children: games
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/planszowka.jpg'),
                  Text(element)
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
