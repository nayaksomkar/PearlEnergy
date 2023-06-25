class PaymentHistoryJson {
  final String month;
  //final String ussage;
  final String bill;
  final String paymentDate;

  PaymentHistoryJson({
    required this.month,
    required this.bill,
    required this.paymentDate,
  });

  factory PaymentHistoryJson.fromJson(Map<String, dynamic> json) {
    //final jsondata = json[''];

    return PaymentHistoryJson(
        month: json['ABC001']['Jan']['ussage'],
        bill: json['ABC001']['Jan']['bill'],
        paymentDate: json['ABC001']['Jan']['paymentDate']);
  }
}