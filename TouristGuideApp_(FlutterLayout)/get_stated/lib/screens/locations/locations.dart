import 'package:flutter/material.dart';
import 'package:get_stated/main.dart';
import 'package:get_stated/models/location.dart';
import 'package:get_stated/screens/locations/tile_overlay.dart';
import 'package:get_stated/widgets/image_banner.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.black,
          title: Text('Locations'),
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) =>
              _itemBuilder(context, index, locations[index]),
        ));
  }

  _onLocationTap(BuildContext context, int id) {
    Navigator.pushNamed(context, LocationDetailsRoute, arguments: {"id": id});
  }

  Widget _itemBuilder(BuildContext context, int index, Location loc) {
    return GestureDetector(
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(imagePath: loc.imagePath, height: 245.0),
            TileOverlay(loc),
          ],
        ),
      ),
      onTap: () => _onLocationTap(context, loc.id),
    );
  }
}
