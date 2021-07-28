import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trip_advisor/models/post_data.dart';
import 'package:trip_advisor/screens/home/widgets/places.dart';
import 'package:trip_advisor/style.dart';

class Home extends StatelessWidget {
  final postData = PostData(
    reviews: 32,
    title: "Conheça as maravilhas da capital Francesa",
    photos: [
      "assets/images/foto_1.jpg",
      "assets/images/foto_2.jpg",
      "assets/images/foto_3.jpg",
      "assets/images/foto_4.jpg",
      "assets/images/foto_5.jpg",
      "assets/images/foto_6.jpg",
      "assets/images/foto_7.jpg",
      "assets/images/foto_8.jpg",
      "assets/images/foto_9.jpg",
    ],
    places: [
      "Musée d'Orsay",
      "Catedral de Notre-Dame",
      "Sainte-Chapelle",
      "Museu do Louvre",
      "Arco do Triunfo",
      "Palais Garnier",
      "Jardim de Luxemburgo",
      "Seine River",
      "Torre Eiffel",
    ],
    content:
        "É impossível não se render aos encantos de Paris, a bela capital francesa e destino turístico frequentado por milhões de pessoas todos os anos. Vibrante, charmosa, romântica, divertida, além de berço da cultura e da arte, a Cidade Luz, como é chamada, possui uma infindável lista de qualidades.",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/Banner.jpg"),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.mapMarkerAlt,
                        color: grayTheme,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Paris - França",
                        style: TextStyle(
                            fontSize: 12,
                            color: grayTheme,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
                  Container(
                      child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: orangeTheme,
                        size: 14,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: orangeTheme,
                        size: 14,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: orangeTheme,
                        size: 14,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: orangeTheme,
                        size: 14,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: grayTheme,
                        size: 14,
                      ),
                    ],
                  )),
                  Text(
                    "${postData.reviews} avaliações",
                    style: TextStyle(color: grayTheme, fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                postData.title,
                style: TextStyle(
                    color: greenTheme,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(postData.content),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Fotos",
                  style: TextStyle(
                      color: greenTheme,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Wrap(
                    runAlignment: WrapAlignment.spaceBetween,
                    spacing: 10,
                    direction: Axis.horizontal,
                    children: [
                      for (int i = 0; i < postData.photos.length; i++)
                        Places(postData.photos[i], postData.places[i])
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
