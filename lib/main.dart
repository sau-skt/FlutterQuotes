import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuotesList(),
    ));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wild',
        text: 'Be yourself everyone else is already taken'),
    Quote(author: 'Oscar Wild', text: 'Quote 2'),
    Quote(author: 'Oscar Wild', text: 'Quote 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
          delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
          }
                ))
            .toList(),
      ),
    );
  }
}
