import 'package:breathely/Screens/game.dart';
import 'package:breathely/Screens/home.dart';
import 'package:breathely/Screens/result.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: 'Breathe.ly',
    initialRoute: '/',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: (context) => MyApp());
        case '/home':
          return MaterialPageRoute(builder: (context) => Home());
        case '/game':
          return MaterialPageRoute(builder: (context) => VideoPlayerScreen());
        case '/result':
          return MaterialPageRoute(builder: (context) => Result());

        // case '/result':
        //   return MaterialPageRoute(builder: (context) => Result());
      }
    },
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      // () => Navigator.pushReplacementNamed(context, '/meditation'),
      // () => Navigator.pushReplacementNamed(context, '/bingo'),
      () => Navigator.pushReplacementNamed(context, '/home'),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Container(
      //   constraints: BoxConstraints.expand(),
      //   decoration: BoxDecoration(
      //       image: DecorationImage(
      //           image: AssetImage("assets/images/womxn.png"),
      //           fit: BoxFit.cover)),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/logo.png',
                height: 250,
                width: 250,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/logogif.gif',
                height: 250,
                width: 250,
              ),
              SizedBox(
                height: 25,
              ),
            ]),
      ),
    );
  }
}
