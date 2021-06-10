import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:sample/models/transaction.dart';

class TranscationList extends StatelessWidget {
  final List<Transaction> _userTransactions;

  TranscationList(this._userTransactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions
          .map(
            (transaction) => Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    )),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "\$ ${transaction.amount}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transaction.title,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      Text(
                        DateFormat.yMMMd().format(transaction.date),
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
