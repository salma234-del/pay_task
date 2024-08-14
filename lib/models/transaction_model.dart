class TransactionModel {
  final String id;
  final String title;
  final String description;
  final double amount;
  final String image;

  TransactionModel({
    required this.id,
    required this.title,
    required this.description,
    required this.amount,
    required this.image,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      amount: json['amount'],
      image: json['image'],
    );
  }
}
