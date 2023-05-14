import 'package:get/get.dart';
import 'package:multicast_dns/multicast_dns.dart';

class SensoresController extends GetxController {
  var name = '_dartobservatory._tcp.local';
  final MDnsClient client = MDnsClient();
  @override
  void onInit() async {
    super.onInit();
    await client.start();
    // _getDevices();
  }

  @override
  void onClose() {
    client.stop();
    super.onClose();
  }

  _getDevices() async {
    await for (final PtrResourceRecord ptr in client
        .lookup<PtrResourceRecord>(ResourceRecordQuery.serverPointer(name))) {
      await for (final SrvResourceRecord srv
          in client.lookup<SrvResourceRecord>(
              ResourceRecordQuery.service(ptr.domainName))) {
        final String bundleId = ptr.domainName.substring(
            0,
            ptr.domainName.indexOf('_') -
                1); //.substring(0, ptr.domainName.indexOf('@'));
        print('Dart observatory instance found at '
            '${srv.target}:${srv.port} for "$bundleId".');
      }
    }
  }

}
