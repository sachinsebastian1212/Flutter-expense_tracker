import 'package:flutter/material.dart';

class ExpensesNew extends StatefulWidget {
  const ExpensesNew({super.key});

  @override
  State<ExpensesNew> createState() => _ExpensesNewState();
}

class _ExpensesNewState extends State<ExpensesNew> {
  
  final _titleController = TextEditingController();

@override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title'))),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                },
                child: const Text('Save Expense '))
          ],
        ),
      ],
    );
  }
}
