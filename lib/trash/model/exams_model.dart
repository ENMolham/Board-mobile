class ExamsModel {
  final String name;
  final String year;
  final String status;
  final String datestart;
  final String dateend;
  final List<Map> exam;

  ExamsModel({
    required this.name,
    required this.year,
    required this.datestart,
    required this.status,
    required this.exam,
    required this.dateend,
  });
}
