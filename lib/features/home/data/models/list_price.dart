class ListPrice {
  final double? amount;

  ListPrice({required this.amount});

  factory ListPrice.fromJson(json) {
    return ListPrice(amount: json['amount']);
  }
}
