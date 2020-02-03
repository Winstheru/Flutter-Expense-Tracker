import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'transaction_list.dart';

import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: "New Shoes", amount: 70.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: "New Laptop", amount: 100.00, date: DateTime.now()),
  ];

  void _addNewTransaction(String transactionTitle, double transactionAmount){
    final newTx = Transaction(title: transactionTitle, amount: transactionAmount, date: DateTime.now(), id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTx);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
