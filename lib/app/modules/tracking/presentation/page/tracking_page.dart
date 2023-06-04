import 'package:auto_route/auto_route.dart';
import 'package:embedded_system/app/modules/tracking/data/fake_repository.dart';
import 'package:embedded_system/app/modules/tracking/presentation/widgets/tracking_adapter_widget.dart';
import 'package:flutter/material.dart';

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
