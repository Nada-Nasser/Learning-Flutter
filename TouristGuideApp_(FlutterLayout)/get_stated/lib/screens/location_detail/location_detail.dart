//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:get_stated/models/location.dart';
import 'package:get_stated/widgets/image_banner.dart';
import 'package:get_stated/screens/location_detail/text_sectoin.dart';
import 'package:get_stated/widgets/location_tile.dart';

class LocationDetails extends StatelessWidget {
  final int locationId;

  LocationDetails(this.locationId);

  @override
  Widget build(BuildContext context) {
    Location loc = Location.fetchByID(locationId);

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: Text(loc.name),
        //title: Text(WordPair.random().asString),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(imagePath: loc.imagePath),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 4.0),
              child: LocationTile(location: loc),
            ),
          ]..addAll(locationToTextSection(loc)),
        ),
      ),
    );
  }

  List<Widget> locationToTextSection(Location loc) {
    return loc.facts.map((e) => TextSection(e.title, e.text)).toList();
  }
}
