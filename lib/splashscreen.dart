import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboardscreen.dart';
// ignore: depend_on_referenced_packages
import 'package:slide_to_act/slide_to_act.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor("#E9EBED"),
      appBar: AppBar(
        backgroundColor: HexColor("#1FC4DA"),
        title: Text(
          "My Digital Resume",
          style: GoogleFonts.acme(),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: ClipPath(
              clipper: Shape1(),
              child: Container(
                width: 300,
                height: 500,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      HexColor("#1FC4DA"),
                      HexColor("#82EFEA"),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 100,
            top: 100,
            right: 100,
            child: Lottie.asset('assets/lottie/flutterlogo.json',
                repeat: true, reverse: true, animate: true),
          ),
          Container(
            padding: EdgeInsets.only(top: 150),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Bagas Dwi Putra",
                  style: GoogleFonts.acme(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Informatics Engineering',
                  style: GoogleFonts.poppins(fontSize: 15),
                ),
                Builder(builder: (context) {
                  final GlobalKey<SlideActionState> _key = GlobalKey();
                  return Padding(
                    padding: EdgeInsets.all(35),
                    child: SlideAction(
                      key: _key,
                      text: "Get Started",
                      sliderRotate: false,
                      innerColor: Colors.black,
                      outerColor: Colors.white,
                      elevation: 24,
                      borderRadius: 50,
                      onSubmit: () {
                        Future.delayed(
                          Duration(seconds: 1),
                          () => _key.currentState?.reset(),
                        );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DashboardScreen();
                        }));
                      },
                      animationDuration: const Duration(milliseconds: 350),
                      submittedIcon: const Icon(
                        Icons.done_all,
                        color: Colors.black,
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Shape1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var round = 50.0;
    var path = Path();
    path.moveTo(0, size.height * .50);
    path.lineTo(0, size.height - round);
    path.quadraticBezierTo(0, size.height, round, size.height);
    path.lineTo(size.width - round, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - round);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
        0, size.height * .33 + round, 0, size.height * .33 + round * 2);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
