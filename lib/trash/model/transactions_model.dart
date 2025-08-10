class TransactionsModel {
  final String title;
  final String namedoctor;
  final String datetr;
  final String status;
  final String statuspayment;
  final String idpay;
  final String cost;
  final String dateend;
  final List road;

  TransactionsModel({
    required this.title,
    required this.namedoctor,
    required this.datetr,
    required this.status,
    required this.statuspayment,
    required this.idpay,
    required this.cost,
    required this.dateend,
    required this.road,
  });
}
