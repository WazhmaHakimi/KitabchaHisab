import 'package:flutter/material.dart';
import 'package:kitabcha_hisab/data/dashboard_data.dart';
import 'package:kitabcha_hisab/widgets/dashboard_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Here"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [
            DashboardCard(title: 'Customers', value: DashboardData.totalCustomers.toString()),
            DashboardCard(title: 'Debt', value: DashboardData.totalDebt.toString()),
            DashboardCard(title: 'Transactions', value: DashboardData.totalTransactions.toString()),
            DashboardCard(title: 'Payments', value: DashboardData.totalPayments.toString()),
          ],
        ),
      ),
    );
  }
}
