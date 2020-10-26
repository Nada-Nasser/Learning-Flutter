import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage extends StatelessWidget {
  final isSelected = <bool>[false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Buttons'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'Hello World',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          FlatButton.icon(
            textColor: Color(0xFF6200EE),
            onPressed: () {
              // Respond to button press
            },
            icon: Icon(
              Icons.ac_unit,
              color: Colors.lightBlue,
            ),
            label: Text("FlatButton.icon"),
          ),
          OutlineButton.icon(
            disabledBorderColor: Colors.lightBlue,
            textColor: Color(0xFF6200EE),
            highlightedBorderColor: Colors.red.withOpacity(0.12),
            onPressed: () {
              // Respond to button press
            },
            icon: Icon(
              Icons.add,
              size: 20,
              color: Colors.lightBlue,
            ),
            label: Text("OutlineButton.icon"),
          ),
          RaisedButton(
            textColor: Colors.white,
            color: Color(0xFF6200EE),
            onPressed: () {
              // Respond to button press
            },
            child: Text('CONTAINED BUTTON'),
          ),
          RaisedButton.icon(
            textColor: Colors.white,
            color: Color(0xFF6200EE),
            onPressed: () {
              // Respond to button press
            },
            icon: Icon(Icons.add, size: 18),
            label: Text("CONTAINED BUTTON"),
          ),
          bu,
          IconButton(
              icon: Icon(
                Icons.child_care,
                color: Colors.yellow[700],
              ),
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "babby care",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.yellow[700].withOpacity(0.7),
                    textColor: Colors.white,
                    fontSize: 16.0);
              })
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => onClickAddButton(),
        label: Text("take Photo"),
        icon: Icon(
          Icons.add_a_photo,
          color: Colors.black,
          size: 40.0,
        ),
        backgroundColor: Colors.red[600],
      ),
    );
  }

  onClickAddButton() {
    print("object");

    Fluttertoast.showToast(
        msg: "This is Bottom Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green.withOpacity(0.7),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

ToggleButtons bu = ToggleButtons(
  color: Colors.black.withOpacity(0.60),
  selectedColor: Color(0xFF6200EE),
  selectedBorderColor: Color(0xFF6200EE),
  fillColor: Color(0xFF6200EE).withOpacity(0.08),
  splashColor: Color(0xFF6200EE).withOpacity(0.12),
  hoverColor: Color(0xFF6200EE).withOpacity(0.04),
  borderRadius: BorderRadius.circular(4.0),
  isSelected: [false, false, true],
  onPressed: (index) {
    // Respond to button selection
  },
  children: [
    Icon(Icons.favorite),
    Icon(Icons.visibility),
    Icon(Icons.notifications),
  ],
);
