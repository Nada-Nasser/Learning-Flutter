import 'package:flutter/material.dart';
import 'package:get_stated/screens/location_detail/location_detail.dart';
import 'package:get_stated/screens/locations/locations.dart';
import 'package:get_stated/style.dart';

const LocationDetailsRoute = "/location_detail";
const LocationsRoute = "/";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _themes(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailsRoute:
          screen = LocationDetails(arguments["id"]);
          break;

        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext contxt) => screen);
    };
  }

  ThemeData _themes() {
    return ThemeData(
        appBarTheme: AppBarTheme(textTheme: TextTheme(title: AppBarTextStyle)),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
          caption: CaptionTextStyle,
          subtitle: SubTitleTextStyle,
        ));
  }
}
