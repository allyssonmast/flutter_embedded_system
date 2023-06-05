import 'package:embedded_system/app/modules/tracking/domain/entity/progress_stage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TrackingStatus extends StatelessWidget {
  final int currentStep;
  final ProcessingStage processingStage;
  final Function() onCancel;
  final Function() onConfirm;
  final Function() onFinish;

  const TrackingStatus({
    Key? key,
    required this.currentStep,
    required this.onCancel,
    required this.onConfirm,
    required this.onFinish,
    required this.processingStage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StepperType stepperType = StepperType.vertical;
    List<String> stepTitles = [
      'Recolhimento na Granja',
      'Lavagem',
      'Classificação e Embalagem',
      'Armazenamento',
      'Transporte',
      'Chegada ao Destino',
      'Entrega Confirmada',
    ];

    return Stepper(
      type: stepperType,
      currentStep: currentStep,
      physics: const NeverScrollableScrollPhysics(),
      controlsBuilder: (onStepContinue, onStepCancel) {
        return Container();
      },
      steps: List.generate(
        stepTitles.length,
        (index) => Step(
          title: Text(stepTitles[index]),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(processingStage.description??''),
              Text('Horário: ${DateFormat.Hm('pt_BR').format(processingStage.startDate)}'),
            ],
          ),
          isActive: currentStep >= index,
          state: currentStep > index
              ? StepState.complete
              : currentStep == index
                  ? StepState.editing
                  : StepState.disabled,
        ),
      ),
    );
  }
}
