import 'package:flutter/material.dart';
import 'package:world_time_app/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    print("home");

    data = data.isEmpty ? ModalRoute.of(context).settings.arguments : data;
    print(data);

    String img =
        data["isDayTime"] ? "assets/images/day.png" : "assets/images/night.png";

    Color color = data["isDayTime"] ? Colors.lightBlue : Colors.blue[900];

    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 120.0),
            child: Column(
              children: [
                FlatButton.icon(
                  onPressed: () async {
                    dynamic results =
                        await Navigator.pushNamed(context, ChooseLocationRoute);
                    setState(() {
                      data = {
                        "location": results['location'],
                        "flag": results['flag'],
                        "time": results['time'],
                        "isDayTime": results['isDayTime'],
                      };
                    });
                  },
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Edit Location",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      //'he',
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  //"time",
                  data["time"],
                  style: TextStyle(
                    fontSize: 66.0,
                    letterSpacing: 2.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
