import 'package:flutter/material.dart';
import '../models/customer.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({super.key, required this.customer});
  final Customer customer;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(customer.name),
          Text(customer.debt.toString())
        ],
      ),
    );
  }
}
