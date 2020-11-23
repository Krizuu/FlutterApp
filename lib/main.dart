// import 'package:flutter/material.dart';

// import './games_manager.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//           brightness: Brightness.light,
//           primarySwatch: Colors.deepPurple,
//           accentColor: Colors.deepOrange),
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text('Planszownia'),
//           ),
//           body: GamesManager(startingGame: 'Games')),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ourboard/pages/loginScreen.dart';
import 'package:ourboard/pages/tasks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        primarySwatch: Colors.purple,
        accentColor: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseUser>(
      future: FirebaseAuth.instance.currentUser(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          FirebaseUser user = snapshot.data;
          return TasksPage(uid: user.uid);
        } else {
          return LoginScreen();
        }
      },
    );
  }
}
