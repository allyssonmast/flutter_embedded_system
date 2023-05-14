import 'package:embedded_system/app/data/models/temperature_humidity_monitor.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GraficoWidget extends StatelessWidget {
  final List<TemperatureHumidityMonitor> data;
  const GraficoWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              // Chart title
              title: ChartTitle(text: 'Temperatura durante o dia'),
              // Enable legend
              legend: Legend(isVisible: true),
              // Enable tooltip
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<TemperatureHumidityMonitor, int>>[
                LineSeries<TemperatureHumidityMonitor, int>(
                    dataSource: data,
                    xValueMapper: (TemperatureHumidityMonitor sales, _) =>
                        sales.timestamp.hour,
                    yValueMapper: (TemperatureHumidityMonitor sales, _) =>
                        sales.temperature.roundToDouble(),
                    name: '',
                    // Enable data label
                    dataLabelSettings: const DataLabelSettings(isVisible: true))
              ]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              //Initialize the spark charts widget
              child: SfSparkLineChart.custom(
                //Enable the trackball
                trackball: const SparkChartTrackball(
                    activationMode: SparkChartActivationMode.tap),
                //Enable marker
                marker: const SparkChartMarker(
                    displayMode: SparkChartMarkerDisplayMode.all),
                //Enable data label
                labelDisplayMode: SparkChartLabelDisplayMode.all,
                xValueMapper: (int index) => data[index].timestamp,
                yValueMapper: (int index) => data[index].temperature,
                dataCount: 5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
