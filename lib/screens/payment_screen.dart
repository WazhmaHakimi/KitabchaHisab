import 'package:flutter/material.dart';

import '../models/customer.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key, required this.customer});

  final Customer customer;

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Record Payment')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment About',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final amount = double.tryParse(amountController.text) ?? 0;

                  widget.customer.debt -= amount;

                  Navigator.pop(context, amount);
                },
                child: const Text('Save Payment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
