import 'package:flutter/material.dart';
import 'package:get_stated/models/location.dart';
import 'package:get_stated/style.dart';

class LocationTile extends StatelessWidget {
  final Location location;
  final bool darkTheme;

  LocationTile({@required this.location, this.darkTheme = false});

  @override
  Widget build(BuildContext context) {
    final textColor = this.darkTheme ? TextColorLight : TextColorDark;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            location.name.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.title.copyWith(color: textColor),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            location.userItinerarySummary.toUpperCase(),
            style: Theme.of(context).textTheme.subtitle,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            location.tourPackageName.toUpperCase(),
            style:
                Theme.of(context).textTheme.caption.copyWith(color: textColor),
          ),
        ),
      ],
    );
  }
}
