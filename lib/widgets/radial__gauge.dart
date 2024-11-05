import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGauge extends StatelessWidget {
  const RadialGauge({
    super.key,
    required this.bmiScore,
  });

  final double bmiScore;

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          minimum: 0,
          maximum: 40,
          ranges: <GaugeRange>[
            GaugeRange(
              startValue: 0,
              endValue: 18.5,
              color: Theme.of(context).primaryColor.withOpacity(.9),
            ),
            GaugeRange(
              startValue: 18.5,
              endValue: 25,
              color: const Color.fromARGB(255, 1, 201, 105),
            ),
            GaugeRange(
              startValue: 25,
              endValue: 30,
              color: const Color.fromARGB(255, 255, 201, 1),
            ),
            GaugeRange(
              startValue: 30,
              endValue: 40,
              color: const Color.fromARGB(255, 239, 59, 50),
            )
          ],
          pointers: <GaugePointer>[
            NeedlePointer(
              value: bmiScore,
              enableAnimation: true,
              animationDuration: 1000,
              needleStartWidth: 2,
              needleLength: 0.66,
              needleEndWidth: 5,
              knobStyle: const KnobStyle(
                knobRadius: 0.075,
                color: Colors.black,
              ),
            ),
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              widget: Text(
                bmiScore.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              angle: 90,
              positionFactor: 0.5,
            )
          ],
        ),
      ],
    );
  }
}
