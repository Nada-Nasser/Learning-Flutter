import 'package:flutter/material.dart';
import 'package:world_time_app/services/locations.dart';
import 'package:world_time_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void updateTime(int index) async {
    WorldTime loc = locations[index];
    await loc.getData();

    Navigator.pop(context, {
      "location": loc.location,
      "flag": loc.flag,
      "time": loc.time,
      "isDayTime": loc.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Choose Location"),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(
                    locations[index].location,
                  ),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/${locations[index].flag}"),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
