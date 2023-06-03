import 'dart:convert';
import 'package:http/http.dart' as http;



class Lote {
  final String id;
  final DateTime productionDate;
  final String type;
  final int quantity;
  final String farm;
  final DateTime deliveryDate;
  final String customer;

  Lote({
    required this.id,
    required this.productionDate,
    required this.type,
    required this.quantity,
    required this.farm,
    required this.deliveryDate,
    required this.customer,
  });
}


class Customer {
  final String id;
  final String name;
  final String address;
  final String phoneNumber;
  final String email;

  Customer({
    required this.id,
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.email,
  });
}

class DataRepository {
  Future<dynamic> listenForData() async {
    try {
      const url = 'http://localhost:3000/api/dados-lora32';
      http.Response response =  await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print('Erro ao receber dados. Código de resposta: ${response.statusCode}');
      }
    } catch (e) {
      print('Erro ao receber dados: $e');
    }
  }
}

class UserAgentClient extends http.BaseClient {
  final String userAgent;
  final http.Client _inner;

  UserAgentClient(this.userAgent, this._inner);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['user-agent'] = userAgent;
    return _inner.send(request);
  }
}