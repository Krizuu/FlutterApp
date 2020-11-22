import 'package:flutter/material.dart';

class Games extends StatelessWidget {
  final List<String> games;

  Games([this.games = const []]) {
    print('[Games widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Games widget] build()');
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
