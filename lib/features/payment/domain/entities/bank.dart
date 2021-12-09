class Bank {
  final int id;
  final String image;
  final String name;
  final String virtualAccount;
  double totalPayment;

  Bank({
    required this.id,
    required this.image,
    required this.name,
    required this.virtualAccount,
    this.totalPayment = 0,
  });
}
