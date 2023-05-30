import 'package:multicast_dns/multicast_dns.dart';

class MdnsResponse {
  final String name;
  final String target;
  final int type;
  final int port;

  MdnsResponse({
    required this.name,
    required this.target,
    required this.type,
    required this.port,
  });

  factory MdnsResponse.fromRawResponse(SrvResourceRecord rawResponse) {
    return MdnsResponse(
        name: rawResponse.name,
        type: rawResponse.resourceRecordType,
        port: rawResponse.resourceRecordType,
        target: rawResponse.target);
  }
}
