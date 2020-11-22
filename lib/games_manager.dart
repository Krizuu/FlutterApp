import 'package:flutter/material.dart';

import './games.dart';

class GamesManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _GamesManagerState();
  }
}

class _GamesManagerState extends State<GamesManager> {
  List<String> _games = ['Gry'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _games.add('Dodawanie gry');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Games(_games)
      ],
    );
  }
}
