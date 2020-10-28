import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:http/http.dart';

class WorldTime {
  String location; // location name for UI
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint
  bool isDayTime;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getData() async {
    try {
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');

      Map data = jsonDecode(response.body);

      // get properties from json
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      String sign = data['utc_offset'].substring(0, 1) + "1";

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      if (int.parse(sign) >= 0) {
        now = now.add(Duration(hours: int.parse(offset)));
      } else {
        now = now.subtract(Duration(hours: int.parse(offset)));
      }
      // set the time property
      time = DateFormat.jm().format(now);

      isDayTime = (now.hour > 6 && now.hour < 20) ? true : false;
    } catch (e) {
      time = "couldnot access the world time api";
    }
  }
}
