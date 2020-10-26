import 'package:flutter/material.dart';
import 'package:widgets/models/quate.dart';
import 'package:widgets/screens/AwesomeQuotes/quate_card.dart';

class AwesomeQuates extends StatefulWidget {
  @override
  _AwesomeQuatesState createState() => _AwesomeQuatesState();
}

class _AwesomeQuatesState extends State<AwesomeQuates> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        content: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        content: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        content: 'The truth is rarely pure and never simple'),
    Quote(author: 'ME :)', content: 'Use ListView not Column view'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView.builder(
        itemCount: quotes.length,
        itemBuilder: (context, index) =>
            _itemBuilder(context, index, quotes[index]),
      ),
      /*
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: quotes
              .map(
                (e) => QuateCard(
                  quote: e,
                  delete: () {
                    setState(() {
                      quotes.remove(e);
                    });
                  },
                ),
              )
              .toList(),
        ),
      ),*/
    );
  }

  Widget _itemBuilder(BuildContext context, int index, Quote e) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: QuateCard(
        quote: e,
        delete: () {
          setState(() {
            quotes.remove(e);
          });
        },
      ),
    );
  }
}
