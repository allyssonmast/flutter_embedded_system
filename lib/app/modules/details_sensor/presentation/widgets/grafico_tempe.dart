import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraficoWidget extends StatelessWidget {
  final List<SensorEntity> data;
  const GraficoWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: 'Temperatura e umidade durante o dia'),
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
        intervalType: data.length < 4
            ? DateTimeIntervalType.minutes
            : DateTimeIntervalType.hours,
        dateFormat: DateFormat('HH:mm'),
        interval: 3,
        labelFormat: '{value}h',
      ),
      primaryYAxis: NumericAxis(
        title: AxisTitle(text: 'Temperaturas'),
        maximum: 50,
        interval: 10,
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
        StackedLineSeries<SensorEntity, DateTime>(
          dataSource: data,
          xAxisName: 'name',
          xValueMapper: (SensorEntity sales, _) => sales.timestamp,
          yValueMapper: (SensorEntity sales, _) => sales.temperatura,
          name: 'Temperaturas',
          color: Colors.red,
          markerSettings: const MarkerSettings(
            isVisible: true,
          ),
          dataLabelSettings: const DataLabelSettings(
            isVisible: false,
          ),
        ),
        LineSeries<SensorEntity, DateTime>(
          dataSource: data,
          xAxisName: 'name',
          color: Colors.blueAccent,
          xValueMapper: (SensorEntity sales, _) => sales.timestamp,
          yValueMapper: (SensorEntity sales, _) => sales.humidade,
          name: 'Umidade',
          markerSettings: const MarkerSettings(
            isVisible: true,
          ),
          yAxisName: 'yAxis',
          dataLabelSettings: const DataLabelSettings(isVisible: false),
        )
      ],
    );
  }
}
//
