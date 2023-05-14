import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsWidgetCard extends StatelessWidget {
  final String temperatura;
  final String valueTemperatura;
  final String idealValue;
  const DetailsWidgetCard({Key? key, required this.temperatura, required this.valueTemperatura, required this.idealValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:const EdgeInsets.all(8) ,
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 200,
        child: Column(
          children: [
           const FaIcon(FontAwesomeIcons.warning,size: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Temperatura $temperatura'),
            ),

            Text(valueTemperatura,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text('Ideal entre: $idealValue'),
            )
          ],
        ),
      ),
    );
  }
}
