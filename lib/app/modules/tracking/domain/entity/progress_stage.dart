class ProcessingStage {
  final String name;
  final DateTime startDate;
  final DateTime? endDate;
  final String? description;

  ProcessingStage({
    required this.name,
    required this.startDate,
    this.endDate,
    this.description,
  });
}