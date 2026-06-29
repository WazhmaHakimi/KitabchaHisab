class Customer {
  final String id;
  final String name;
  final String phone;
  final String address;
  double debt;
  List<double> payments;

  Customer({
    required this.id,
    required this.name,
    required this.phone,
    required this.address,
    required this.debt,
    this.payments = const [],
  });
}
