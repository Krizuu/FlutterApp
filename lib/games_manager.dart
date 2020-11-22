import 'package:flutter/material.dart';

import './games.dart';
import './games_control.dart';

class GamesManager extends StatefulWidget {
  final String startingGame;

  GamesManager({this.startingGame = 'Add game'}) {
    print('[Games Manager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[Games Manager Widget] createState');
    return _GamesManagerState();
  }
}

class _GamesManagerState extends State<GamesManager> {
  List<String> _games = [];

  @override
  void initState() {
    print('[Games Manager Widget] initState');
    _games.add(widget.startingGame);
    super.initState();
  }

  @override
  void didUpdateWidget(GamesManager oldWidget) {
    print('[Games Manager Widget] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addGames(String game) {
    setState(() {
      _games.add(game);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[Games Manager Widget] build()');

    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          child: GamesControl(_addGames),
        ),
        Games(_games)
      ],
    );
  }
}
