import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraficoWidget extends StatelessWidget {
  final List<SensorEntity> data;
  const GraficoWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SfCartesianChart(
          title: ChartTitle(text: 'Temperatura e umidade durante o dia'),
          // Enable legend
          legend: Legend(isVisible: true, position: LegendPosition.bottom),
          axes: <ChartAxis>[
            NumericAxis(
              name: 'yAxis',
              opposedPosition: true,
              title: AxisTitle(text: 'Umidade'),
              labelFormat: '{value}%',
              interval: 20,
              maximum: 100,
              minimum: 0,
            ),
          ],

          primaryXAxis: DateTimeAxis(
            //Specified date time interval type in hours
            title: AxisTitle(text: 'Horas'),
            intervalType: DateTimeIntervalType.hours,
            dateFormat: DateFormat('HH:mm'),
            interval: 4,
            labelFormat: '{value}h',
          ),
          primaryYAxis: NumericAxis(
            title: AxisTitle(text: 'Temperaturas'),
            maximum: 40,
            interval: 5,
            labelFormat: '{value}°C',
            minimum: 20,
          ),
          zoomPanBehavior: ZoomPanBehavior(
            enableDoubleTapZooming: true,
            enablePanning: true,
            zoomMode: ZoomMode.xy,
          ),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<SensorEntity, DateTime>>[
            LineSeries<SensorEntity, DateTime>(
              dataSource: data,
              xAxisName: 'name',
              xValueMapper: (SensorEntity sales, _) => sales.timestamp,
              yValueMapper: (SensorEntity sales, _) => sales.temperatura,
              name: 'Temperaduras',
              dataLabelSettings: const DataLabelSettings(isVisible: false),
            ),
            LineSeries<SensorEntity, DateTime>(
              dataSource: data,
              xAxisName: 'name',
              xValueMapper: (SensorEntity sales, _) => sales.timestamp,
              yValueMapper: (SensorEntity sales, _) => sales.humidade,
              name: 'Umidade',
              yAxisName: 'yAxis',
              dataLabelSettings: const DataLabelSettings(isVisible: false),
            )
          ],
        ),
      ],
    );
  }
}
//
