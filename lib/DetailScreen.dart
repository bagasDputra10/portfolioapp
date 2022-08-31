import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import './dashboardlist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final DashboardList place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return WebView(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
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
                BackButton(),
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
                BackButton(),
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

class WebView extends StatefulWidget {
  final DashboardList place;

  const WebView({Key? key, required this.place}) : super(key: key);

  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff2b8f9f), Colors.white70])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: kIsWeb ? null : AppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 64,
            ),
            child: Center(
              child: SizedBox(
                width: screenWidth <= 1200 ? 800 : 1200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 32),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              ClipRRect(
                                child: Image.asset(widget.place.imageAsset),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              const SizedBox(height: 16),
                              Scrollbar(
                                controller: _scrollController,
                                child: Container(
                                  height: 150,
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: ListView(
                                    controller: _scrollController,
                                    scrollDirection: Axis.horizontal,
                                    children: widget.place.imageUrls.map((url) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(url),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 32),
                        Expanded(
                          child: Card(
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Text(
                                    widget.place.item,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 30.0),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: Text(
                                      widget.place.description,
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.lato(fontSize: 16.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

// class ExButton extends StatefulWidget {
//   const ExButton({Key? key}) : super(key: key);

//   @override
//   State<ExButton> createState() => _ExButtonState();
// }

// class _ExButtonState extends State<ExButton> {
//   var ctime;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(3.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             CircleAvatar(
//               backgroundColor: HexColor('ced3dc'),
//               child: IconButton(
//                 icon: Icon(
//                   Icons.exit_to_app,
//                   color: HexColor("13293d"),
//                 ),
//                 onPressed: ()  {
//                       ScaffoldMessenger.of(context).showSnackBar(snack);
//                   }
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class BackButton extends StatefulWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  State<BackButton> createState() => _BackButtonState();
}

class _BackButtonState extends State<BackButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Masuk Menu Dashboard'),
                ));
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    ));
  }
}
