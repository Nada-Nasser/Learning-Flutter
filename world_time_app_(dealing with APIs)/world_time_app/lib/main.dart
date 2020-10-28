import 'package:flutter/material.dart';
import 'package:world_time_app/Screens/choose_location/chooselocation.dart';
import 'package:world_time_app/Screens/homepage/home.dart';
import 'package:world_time_app/Screens/loading/loading.dart';

void main() {
  runApp(MyApp());
}

const HomePageRoute = "/home";
const ChooseLocationRoute = "/location";
const LoadingRoute = "/";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: LoadingRoute,
      routes: {
        HomePageRoute: (context) => Home(),
        ChooseLocationRoute: (context) => ChooseLocation(),
        LoadingRoute: (context) => Loading(),
      },
    );
  }
}
