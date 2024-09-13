import 'package:flutter/material.dart';

class ExpensesNew extends StatefulWidget {
  const ExpensesNew({super.key});

  @override
  State<ExpensesNew> createState() => _ExpensesNewState();
}

class _ExpensesNewState extends State<ExpensesNew> {
  var _enteredTitle = '';

  void _saveTitleInput(String inputValue) {
    _enteredTitle = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
            onChanged: _saveTitleInput,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title'))),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  print(_enteredTitle);
                },
                child: const Text('Save Expense '))
          ],
        ),
      ],
    );
  }
}
