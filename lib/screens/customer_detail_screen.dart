import 'package:flutter/material.dart';
import 'package:kitabcha_hisab/screens/payment_screen.dart';
import '../models/customer.dart';
import '../utils/constants.dart';
import '../widgets/info_row.dart';

class CustomerDetailScreen extends StatefulWidget {
  const CustomerDetailScreen({super.key, required this.customer});
  final Customer customer;

  @override
  State<CustomerDetailScreen> createState() => _CustomerDetailScreenState();
}

class _CustomerDetailScreenState extends State<CustomerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.customer.name)),

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(radius: 40, child: Text(widget.customer.name[0])),
                Text(
                  widget.customer.name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                InfoRow(title: 'Phone', value: widget.customer.phone),
                InfoRow(title: 'Address', value: widget.customer.address),
                InfoRow(title: 'Debt', value: "${widget.customer.debt} AFN"),
                const SizedBox(height: 20),
                const Text(
                  "Payments",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ...widget.customer.payments.map((p) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Text(
                      "- $p AFN",
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  );
                }).toList(),
                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      if (widget.customer.payments.isNotEmpty) {
                        final lastPayment = widget.customer.payments.last;

                        setState(() {
                          widget.customer.payments.removeLast();
                          widget.customer.debt += lastPayment;
                        });
                      }
                    },
                    child: const Text("Undo Last Payment"),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PaymentScreen(customer: widget.customer),
                        ),
                      ).then((value) {
                        if (value != null) {
                          setState(() {});
                        }
                      });
                    },
                    child: const Text("Record Payment"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
