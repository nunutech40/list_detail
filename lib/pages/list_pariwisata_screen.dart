import 'package:flutter/material.dart';
import 'package:list_detail/models/pariwisata_list.dart';

import 'detail_pariwisata_screen.dart';

class ListPariwisataScreen extends StatefulWidget {
  const ListPariwisataScreen({Key? key}) : super(key: key);

  @override
  _ListPariwisataScreenState createState() => _ListPariwisataScreenState();
}

class _ListPariwisataScreenState extends State<ListPariwisataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List Pariwisata"),
        ),
        body: ListView.builder(
          itemCount: tourismPlaceList.length,
          itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPariwisataScreen();
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 1, child: Image.asset(place.imageAsset)),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              place.name,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            const SizedBox(height: 16.0),
                            Text(place.location)
                          ],
                        ),
                      ))
                ],
              ),
            ),
          );
        }));
  }
}
