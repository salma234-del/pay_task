class EarningModel {
  final String title;
  final int amount;

  EarningModel({
    required this.title,
    required this.amount,
  });

  factory EarningModel.fromJson(Map<String, dynamic> json) {
    return EarningModel(
      title: json['title'],
      amount: json['amount'],
    );
  }
}
