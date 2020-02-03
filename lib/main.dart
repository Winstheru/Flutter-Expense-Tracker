import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // String titleInput;
  // String amountInput;
  //cara lain ngambil valuenya
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expense Tracker"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text("CHART"),
                elevation: 5,
                color: Colors.blue,
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      // onChanged: (value){
                      //   titleInput = value;
                      // },
                      controller: titleController,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      // onChanged: (value) => amountInput = value
                      controller: amountController,
                    ),
                    FlatButton(
                      child: Text('Add Transaction'),
                      textColor: Colors.purple,
                      onPressed: () {},
                    ),
                    TransactionList(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
