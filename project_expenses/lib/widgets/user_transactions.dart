import 'package:flutter/material.dart';
import 'package:project_expenses/models/transaction.dart';
import 'package:project_expenses/widgets/new_transaction.dart';
import 'package:project_expenses/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      amout: 12.21,
      title: "new item",
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      amout: 42.99,
      title: "new item 2",
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final nextTx = Transaction(
        title: title,
        amout: amount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(nextTx);
    });
    print(_userTransactions.length);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
