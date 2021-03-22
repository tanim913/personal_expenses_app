import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
        title: 'New Phone', id: 'T1', amount: 899.00, date: DateTime.now()),
    Transaction(
        title: 'New PC', id: 'T2', amount: 8889.00, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expenses'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 50,
            child: Card(
              color: Colors.blue,
              child: Container(child: Text('Chart!')),
              elevation: 7,
            ),
          ),
          Column(
              children: transaction.map((tx) {
            return Card(
              child: Text(tx.title),
            );
          }).toList())
        ],
      ),
    );
  }
}
