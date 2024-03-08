import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // Use a material color
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: -0,
              right:-20,
              child: SvgPicture.asset('assets/Ellipse 2.svg'),
            ),
            Positioned(
              top: 165,
              left:-10,
              child: SvgPicture.asset('assets/Ellipse 4.svg'),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: Transform.rotate(
                  angle: -86 * (13.141592653589793 / 180),
                  child: SvgPicture.asset('assets/Ellipse 3.svg'),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset('assets/Ellipse 6.svg'),
              ),
            ),
            Positioned(
              child:Align(
                alignment: Alignment.centerLeft,
              child: SvgPicture.asset('assets/Frame 1.svg'),
              )
            )
          ],
        ),
      ),
    );
  }
}
