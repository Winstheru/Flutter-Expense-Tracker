import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: transactions.map((tx) {
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
                  title: Text(tx.title,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle:
                      Text(DateFormat('EEE, dd-MMM-yyyy').format(tx.date)),
                ));
          }).toList(),
        ),
      ),
    );
  }
}
