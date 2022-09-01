import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import './dashboardlist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class DetailScreen extends StatelessWidget {
  final DashboardList place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return DetailMobilePage(place: place);
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final DashboardList place;

  const DetailMobilePage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SafeArea(
                    child: ImageSlideshow(
                        indicatorColor: Colors.blue,
                        indicatorRadius: 3,
                        onPageChanged: (value) {},
                        height: 200,
                        autoPlayInterval: 4000,
                        isLoop: true,
                        children: place.imageSlider.map((file) {
                          return Container(
                            color: HexColor('1FC4DA'),
                            child: Image.asset(file),
                          );
                        }).toList())),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor('ced3dc'),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: HexColor("13293d"),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Dashboard Tittle
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.item,
                style: GoogleFonts.poppins(
                    color: HexColor('13292d'),
                    fontSize: 30,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.description,
                style: GoogleFonts.openSans(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
