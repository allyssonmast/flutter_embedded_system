import 'package:auto_route/auto_route.dart';
import 'package:embedded_system/app/modules/tracking/data/fake_repository.dart';
import 'package:embedded_system/app/modules/tracking/presentation/widgets/tracking_adapter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

@RoutePage()
class TrackingPage extends StatefulWidget {
  const TrackingPage({Key? key}) : super(key: key);

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.search_ellipsis,
        overlayColor: Colors.black,
        overlayOpacity: 0.4,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.calendar_month),
            label: 'Data',
          ),
          SpeedDialChild(
            child: const Icon(Icons.qr_code_2),
            label: 'QrCode',
          ),
          SpeedDialChild(
            child: const Icon(Icons.backpack),
            label: 'Id',
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: trackingList.length,
        itemBuilder: (_, index) {
          var tracking = trackingList[index];
          return TrackingAdapterWidget(tracking: tracking);
        },
      ),
    );
  }
}
