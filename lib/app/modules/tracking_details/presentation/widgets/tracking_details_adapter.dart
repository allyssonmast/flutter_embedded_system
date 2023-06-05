import 'package:embedded_system/app/modules/tracking/domain/entity/tracking.dart';
import 'package:embedded_system/app/modules/tracking/presentation/widgets/variables_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TrackingDetailsAdapter extends StatelessWidget {
  final Tracking tracking;
  const TrackingDetailsAdapter({Key? key, required this.tracking})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Variabails(title: 'ID:', subtitle: tracking.id),
                Variabails(title: 'Fazenda:', subtitle: tracking.farm),
                Variabails(
                    title: 'Número do Lote:', subtitle: tracking.batchNumber),
                Variabails(title: 'Tipo de Ovo:', subtitle: tracking.eggType),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Variabails(
                    title: 'Data de Produção:',
                    subtitle: DateFormat('dd/MM/yyyy')
                        .format(tracking.productionDate)),
                Variabails(title: 'Cliente:', subtitle: tracking.customer),
                Variabails(title: 'Fornecedor:', subtitle: tracking.supplier),
                Variabails(
                    title: 'Quantidade:',
                    subtitle: tracking.quantity.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
