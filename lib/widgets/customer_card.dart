import 'package:flutter/material.dart';
import 'package:kitabcha_hisab/screens/customer_detail_screen.dart';
import 'package:kitabcha_hisab/utils/constants.dart';
import '../models/customer.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({super.key, required this.customer});
  final Customer customer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CustomerDetailScreen(customer: customer);
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              customer.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              "Debt: ${customer.debt}",
              style: TextStyle(color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
