
import 'package:flutter/material.dart';

class ExpensesNew extends StatefulWidget {
  const ExpensesNew({super.key});

  @override
  State<ExpensesNew> createState() => _ExpensesNewState();
}

class _ExpensesNewState extends State<ExpensesNew> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      maxLength: 50,
      decoration: InputDecoration(
        label: Text('Title')
      ),
    );
  }
}