import 'progress_stage.dart';

class Tracking {
  final String id;
  final DateTime productionDate;
  final String farm;
  final List<ProcessingStage> stages;
  final String customer;
  final String batchNumber;
  final String supplier;
  final String transportVehicle;
  final String eggType;
  final int quantity;

  Tracking({
    required this.id,
    required this.productionDate,
    required this.farm,
    required this.stages,
    required this.customer,
    required this.batchNumber,
    required this.supplier,
    required this.transportVehicle,
    required this.eggType,
    required this.quantity,
  });
}

