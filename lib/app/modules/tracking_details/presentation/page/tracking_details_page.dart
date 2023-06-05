import 'package:auto_route/auto_route.dart';
import 'package:embedded_system/app/modules/tracking/data/fake_repository.dart';
import 'package:embedded_system/app/modules/tracking/domain/entity/tracking.dart';
import 'package:embedded_system/app/modules/tracking_details/presentation/widgets/status_tracking_widget.dart';
import 'package:embedded_system/app/modules/tracking_details/presentation/widgets/tracking_details_adapter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

@RoutePage()
class TrackingDetailsPage extends StatefulWidget {
  final String trackingId;

  const TrackingDetailsPage(
      {Key? key, @PathParam('id') required this.trackingId})
      : super(key: key);

  @override
  State<TrackingDetailsPage> createState() => _TrackingDetailsPageState();
}

class _TrackingDetailsPageState extends State<TrackingDetailsPage> {
  late Tracking tracking;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tracking =
        trackingList.where((element) => element.id == widget.trackingId).first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.view_list,
        overlayColor: Colors.black,
        overlayOpacity: 0.4,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.share),
            label: 'Compartilhar'
          ),
          SpeedDialChild(
            child: const Icon(Icons.picture_as_pdf),
            label: 'Gerar pdf',
          ),
          SpeedDialChild(
            child: const Icon(Icons.bar_chart),
            label: 'Histórico dos sensores',
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Rastreamento'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TrackingDetailsAdapter(
              tracking: tracking,
            ),
            TrackingStatus(
              currentStep: tracking.stages.length-1,
              processingStage: tracking.stages.last,
              onCancel: () {},
              onConfirm: () {},
              onFinish: () {},
            )
          ],
        ),
      ),
    );
  }
}
