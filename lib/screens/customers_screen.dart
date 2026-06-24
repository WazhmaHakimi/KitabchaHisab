import 'package:flutter/material.dart';
import 'package:kitabcha_hisab/data/customer_data.dart';
import 'package:kitabcha_hisab/screens/customer_detail_screen.dart';
import 'package:kitabcha_hisab/widgets/customer_card.dart';

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

          return CustomerCard(customer: customer);
        },
      ),
    );
  }
}
