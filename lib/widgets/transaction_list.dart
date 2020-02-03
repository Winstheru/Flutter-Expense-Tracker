import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: "New Shoes", amount: 70.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: "New Laptop", amount: 100.00, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map((tx) {
        return Card(
            elevation: 2,
            child: ListTile(
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber, width: 2)),
                  child: Text(
                    "\$${tx.amount}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              title:
                  Text(tx.title, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(DateFormat('EEE, dd-MMM-yyyy').format(tx.date)),
            ));
      }).toList(),
    );
  }
}
