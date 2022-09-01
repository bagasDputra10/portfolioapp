import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import './dashboardlist.dart';
import 'DetailScreen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor("#E9EBED"),
        body: Stack(
          children: <Widget>[
            RoundedShape(),
            // Title Dashboard //
            Container(
                margin: EdgeInsets.fromLTRB(70, 265, 0, 0),
                child: Text("DASHBOARD MENU",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2))),
            // Grid View
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth <= 600) {
                    return const DashboardGrid(gridCount: 2);
                  } else if (constraints.maxWidth <= 1200) {
                    return const DashboardGrid(gridCount: 4);
                  } else {
                    return const DashboardGrid(gridCount: 6);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardGrid extends StatelessWidget {
  final int gridCount;

  const DashboardGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 295),
      child: GridView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final DashboardList place = DashboardItemList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Container(
              child: Card(
                semanticContainer: true,
                margin: const EdgeInsets.all(10),
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(place.imageAsset)),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text(
                          place.item,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: DashboardItemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2 / 3),
      ),
    );
  }
}

/// Custom Shape Clipper
class Rounded1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    double curveHeight = size.height / 2;
    var p = Path();
    p.lineTo(0, height - curveHeight);
    p.quadraticBezierTo(width / 2, height, width, height - curveHeight);
    p.lineTo(width, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class RoundedShape extends StatefulWidget {
  const RoundedShape({Key? key}) : super(key: key);

  @override
  State<RoundedShape> createState() => _RoundedShapeState();
}

class _RoundedShapeState extends State<RoundedShape> {
  Color color = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: ClipPath(
            clipper: Rounded1(),
            child: Container(
              child: Align(
                alignment: Alignment.topCenter,
                child: AvatarGlow(
                  glowColor: HexColor('#006092'),
                  endRadius: 90.0,
                  duration: Duration(milliseconds: 1000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 25),
                  child: Material(
                    elevation: 8.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/IP1.jpg'),
                        radius: 45.0,
                      ),
                    ),
                  ),
                ),
              ),
              height: 250,
              decoration: BoxDecoration(color: color),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 190.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: HexColor("#1FC4DA"),
                  ),
                  onPressed: () {
                    setState(() {
                      color = HexColor("#1FC4DA");
                    });
                  },
                  child: Text('1'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: HexColor("#82EFEA"),
                  ),
                  onPressed: () {
                    setState(() {
                      color = HexColor("#82EFEA");
                    });
                  },
                  child: Text('2'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      color = Colors.blue;
                    });
                  },
                  child: Text('3'),
                ),
                // RaisedButton(
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10)),
                //   color: HexColor("#1FC4DA"),
                //   onPressed: () {
                //     setState(() {
                //       color = HexColor("#1FC4DA");
                //     });
                //   },
                // ),
                // RaisedButton(
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10)),
                //   color: HexColor("#82EFEA"),
                //   onPressed: () {
                //     setState(() {
                //       color = HexColor("#82EFEA");
                //     });
                //   },
                // ),
                // RaisedButton(
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10)),
                //   color: Colors.blue,
                //   onPressed: () {
                //     setState(() {
                //       color = Colors.blue;
                //     });
                //   },
                // ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
