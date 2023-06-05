import 'package:auto_route/auto_route.dart';
import 'package:embedded_system/app/modules/tracking/domain/entity/tracking.dart';
import 'package:flutter/material.dart';

class TrackingAdapterWidget extends StatelessWidget {
  final Tracking tracking;
  const TrackingAdapterWidget({Key? key, required this.tracking})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = tracking.stages.length < 4
        ? Colors.red
        : tracking.stages.length == 4
            ? Colors.amber
            : Colors.green;
    return ListTile(
      leading: Icon(
        Icons.circle,
        size: 10,
        color: color,
      ),
      title: Text(
        'Lote: ${tracking.batchNumber}',
        style: TextStyle(fontWeight: FontWeight.w900, color: color),
      ),
      horizontalTitleGap: 4,
      subtitle: Text('Cliente: ${tracking.customer}'),
      trailing: Text('Quantidade: ${tracking.quantity.toString()}'),
      onTap: () {
        context.router.pushNamed('/details-tracking/${tracking.id}');
      },
    );
  }
}
