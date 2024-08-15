class VisaModel {
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;
  final int amount;

  VisaModel({
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
    required this.amount,
  });

  factory VisaModel.fromJson(Map<String, dynamic> json) {
    return VisaModel(
        cardNumber: json['cardNumber'],
        cardHolder: json['cardHolder'],
        expiryDate: json['expiryDate'],
        amount: json['amount']);
  }

  Map<String, dynamic> toJson() {
    return {
      'cardNumber': cardNumber,
      'cardHolder': cardHolder,
      'expiryDate': expiryDate,
      'amount': amount,
    };
  }
}
