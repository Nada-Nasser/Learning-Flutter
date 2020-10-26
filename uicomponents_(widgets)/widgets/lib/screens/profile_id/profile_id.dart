import 'package:flutter/material.dart';

class ProfileID extends StatefulWidget {
  @override
  _ProfileIDState createState() => _ProfileIDState();
}

class _ProfileIDState extends State<ProfileID> {
  int currentLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("Profile Page"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentLevel++;
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.amber[300],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/studying_cat.jpeg"),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[500],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 10.0,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Nada Nasser",
              style: TextStyle(
                color: Colors.amber[300],
                fontSize: 20.0,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Current Level".toUpperCase(),
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 10.0,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "$currentLevel",
              style: TextStyle(
                color: Colors.amber[300],
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.amber[300],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "myEmail@gmail.com",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15.0,
                      letterSpacing: 2.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
