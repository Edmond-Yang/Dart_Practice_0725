import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: Test(),
));

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  List<Quote> quotes = [
    Quote(text:'A bad workman always blames his tools.', author: 'Edmond Yang'),
    Quote(text:'A bird in hand is worth two in the bush.', author: 'Edmond Yang'),
    Quote(text:'Absence makes the heart grow fonder.', author: 'Edmond Yang'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('List Challenge'),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState((){
            quotes.remove(quote);
            }); //setState
          } //Delete
        )).toList(),
      )
    );
  }
}