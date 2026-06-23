import 'package:flutter/material.dart';
import 'package:kitabcha_hisab/data/customer_data.dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customers')),
      body: ListView.builder(
        itemCount: CustomerData.customers.length,
        itemBuilder: (context, index) {
          final customer = CustomerData.customers[index];

          return ListTile(
            title: Text(customer.name),
            subtitle: Text(customer.debt.toString()),
          );
        },
      ),
    );
  }
}
