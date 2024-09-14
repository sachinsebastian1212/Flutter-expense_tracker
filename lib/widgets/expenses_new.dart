import 'package:flutter/material.dart';

class ExpensesNew extends StatefulWidget {
  const ExpensesNew({super.key});

  @override
  State<ExpensesNew> createState() => _ExpensesNewState();
}

class _ExpensesNewState extends State<ExpensesNew> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void _presentDatePicker() {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1);
    showDatePicker(context: context, firstDate: firstDate, lastDate: now);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
              controller: _titleController,
              maxLength: 50,
              decoration: const InputDecoration(label: Text('Title'))),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    maxLength: 50,
                    decoration: const InputDecoration(
                      prefixText: '\$ ',
                      label: Text('Amount'),
                    )),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Selected date'),
                    IconButton(
                        onPressed: _presentDatePicker,
                        icon: const Icon(Icons.calendar_month))
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print(_titleController.text);
                    print(_amountController.text);
                  },
                  child: const Text('Save Expense ')),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Clear'))
            ],
          ),
        ],
      ),
    );
  }
}
