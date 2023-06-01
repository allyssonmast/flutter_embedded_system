import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsWidgetCard extends StatelessWidget {
  final String temperatura;
  final String valueTemperatura;
  final String idealValue;
  final IconData iconData;

  const DetailsWidgetCard(
      {Key? key,
      required this.temperatura,
      required this.valueTemperatura,
      required this.idealValue,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              iconData,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(temperatura,maxLines: 1,overflow: TextOverflow.ellipsis,),
            ),
            Text(
              valueTemperatura,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Ideal entre: $idealValue'),
            )
          ],
        ),
      ),
    );
  }
}
