import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addUserTransactions;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addUserTransactions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: amountController,
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
              child: const Text('Add Transaction'),
              onPressed: () => addUserTransactions(
                titleController.text,
                double.parse(amountController.text),
              ),
            )
          ],
        ),
      ),
    );
  }
}
