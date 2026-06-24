import 'package:flutter/material.dart';
import 'package:kitabcha_hisab/utils/constants.dart';
import '../models/customer.dart';
import '../widgets/info_row.dart';

class CustomerDetailScreen extends StatelessWidget {
  const CustomerDetailScreen({super.key, required this.customer});

  final Customer customer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(customer.name)),

      body: Center(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 40, child: Text(customer.name[0])),
                SizedBox(height: 20),
                InfoRow(title: 'Phone', value: customer.phone),
                InfoRow(title: 'Address', value: customer.address),
                InfoRow(title: 'Debt', value: customer.debt),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
