import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  // This widget is the root of your application.

  final String _title;
  final String _body;

  static const double hPadding = 5.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(hPadding, 10.5, hPadding, 2.5),
          child: Text(_title, style: Theme.of(context).textTheme.title),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(hPadding, 2.5, hPadding, 10.5),
          child: Text(_body),
        ),
      ],
    );
  }
}
