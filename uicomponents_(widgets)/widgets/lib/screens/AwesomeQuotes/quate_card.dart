import 'package:flutter/material.dart';
import 'package:widgets/models/quate.dart';

class QuateCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuateCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5.0, 16.0, 5.0, 0),
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            quote.content,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          FlatButton.icon(
            onPressed: delete,
            icon: Icon(Icons.delete),
            label: Text("Delete Quote"),
          )
        ],
      ),
    );
  }
}
