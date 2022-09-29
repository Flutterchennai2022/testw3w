import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splash: 'assets/facebook.png', // use any widget here
        nextScreen: MyHomePage(),
        splashTransition: SplashTransition.rotationTransition,
        duration: 3000,
      )
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: 150,
              height: 150,
              child: Image.asset('assets/logo.png'),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Text("Welcome to Proto Coders Point",style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}