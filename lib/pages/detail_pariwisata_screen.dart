import 'package:flutter/material.dart';
import 'package:list_detail/models/pariwisata_list.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailPariwisataScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailPariwisataScreen({Key? key, required this.place})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pariwisata"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(place.imageAsset),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        Text('Open Everyday')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.alarm),
                        Text("09:00 - 20:00")
                      ],
                    ),
                    Column(
                      children: <Widget>[Icon(Icons.money), Text("RP 25.000")],
                    )
                  ],
                )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(bottom: 16.0),
                children: place.imageUrls.map((image) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(image),
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
