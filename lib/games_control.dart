import 'package:flutter/material.dart';

class GamesControl extends StatelessWidget {
  final Function addGame;

  GamesControl(this.addGame);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addGame('Games');
      },
      child: Text('Add Product'),
    );
  }
}
