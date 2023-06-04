import '../domain/entity/progress_stage.dart';
import '../domain/entity/tracking.dart';
List<Tracking> trackingList = [
  Tracking(
    id: '001',
    productionDate: DateTime(2023, 5, 1),
    farm: 'Granja XYZ',
    stages: [
      ProcessingStage(
        name: 'Recolhimento',
        startDate: DateTime(2023, 5, 1),
        endDate: DateTime(2023, 5, 2),
        description: 'Recolhimento dos ovos na granja.',
      ),
      ProcessingStage(
        name: 'Lavagem',
        startDate: DateTime(2023, 5, 2),
        endDate: DateTime(2023, 5, 3),
        description: 'Lavagem e higienização dos ovos antes da classificação.',
      ),
      ProcessingStage(
        name: 'Classificação',
        startDate: DateTime(2023, 5, 3),
        endDate: DateTime(2023, 5, 4),
        description: 'Classificação dos ovos por tamanho e qualidade.',
      ),
      ProcessingStage(
        name: 'Embalagem',
        startDate: DateTime(2023, 5, 4),
      ),
      ProcessingStage(
        name: 'Carregamento',
        startDate: DateTime(2023, 5, 4),
      ),
      ProcessingStage(
        name: 'Transporte',
        startDate: DateTime(2023, 5, 4),
      ),
      ProcessingStage(
        name: 'Descarregamento',
        startDate: DateTime(2023, 5, 5),
      ),
      ProcessingStage(
        name: 'Verificação',
        startDate: DateTime(2023, 5, 5),
      ),
    ],
    customer: 'Supermercado ABC',
    batchNumber: '20230501-001',
    supplier: 'Distribuidor XYZ',
    transportVehicle: 'Caminhão ABC',
    eggType: 'Orgânico',
    quantity: 200,
  ),
  Tracking(
    id: '002',
    productionDate: DateTime(2023, 5, 2),
    farm: 'Granja 123',
    stages: [
      ProcessingStage(
        name: 'Recolhimento',
        startDate: DateTime(2023, 5, 2),
        endDate: DateTime(2023, 5, 3),
        description: 'Recolhimento dos ovos na granja.',
      ),
      ProcessingStage(
        name: 'Lavagem',
        startDate: DateTime(2023, 5, 3),
        endDate: DateTime(2023, 5, 4),
        description: 'Lavagem e higienização dos ovos antes da classificação.',
      ),
      ProcessingStage(
        name: 'Classificação',
        startDate: DateTime(2023, 5, 4),
        endDate: DateTime(2023, 5, 5),
        description: 'Classificação dos ovos por tamanho e qualidade.',
      ),
    ],
    customer: 'Supermercado XYZ',
    batchNumber: '20230502-002',
    supplier: 'Distribuidor ABC',
    transportVehicle: 'Caminhão XYZ',
    eggType: 'Convencional',
    quantity: 150,
  ),
  Tracking(
    id: '003',
    productionDate: DateTime(2023, 5, 3),
    farm: 'Granja ABC',
    stages: [
      ProcessingStage(
        name: 'Recolhimento',
        startDate: DateTime(2023, 5, 3),
        endDate: DateTime(2023, 5, 4),
        description: 'Recolhimento dos ovos na granja.',
      ),
      ProcessingStage(
        name: 'Lavagem',
        startDate: DateTime(2023, 5, 4),
        endDate: DateTime(2023, 5, 5),
        description: 'Lavagem e higienização dos ovos antes da classificação.',
      ),
      ProcessingStage(
        name: 'Classificação',
        startDate: DateTime(2023, 5, 5),
        endDate: DateTime(2023, 5, 6),
        description: 'Classificação dos ovos por tamanho e qualidade.',
      ),
    ],
    customer: 'Supermercado XYZ',
    batchNumber: '20230503-003',
    supplier: 'Distribuidor ABC',
    transportVehicle: 'Caminhão XYZ',
    eggType: 'Orgânico',
    quantity: 180,
  ),
  Tracking(
    id: '004',
    productionDate: DateTime(2023, 5, 4),
    farm: 'Granja 789',
    stages: [
      ProcessingStage(
        name: 'Recolhimento',
        startDate: DateTime(2023, 5, 4),
        endDate: DateTime(2023, 5, 5),
        description: 'Recolhimento dos ovos na granja.',
      ),
      ProcessingStage(
        name: 'Lavagem',
        startDate: DateTime(2023, 5, 5),
        endDate: DateTime(2023, 5, 6),
        description: 'Lavagem e higienização dos ovos antes da classificação.',
      ),
      ProcessingStage(
        name: 'Classificação',
        startDate: DateTime(2023, 5, 6),
        endDate: DateTime(2023, 5, 7),
        description: 'Classificação dos ovos por tamanho e qualidade.',
      ),
      ProcessingStage(
        name: 'Embalagem',
        startDate: DateTime(2023, 5, 7),
      ),
    ],
    customer: 'Supermercado XYZ',
    batchNumber: '20230504-004',
    supplier: 'Distribuidor ABC',
    transportVehicle: 'Caminhão XYZ',
    eggType: 'Convencional',
    quantity: 170,
  ),
  // Restante dos itens da lista...
];
