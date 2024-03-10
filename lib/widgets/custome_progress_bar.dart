import 'package:flutter/material.dart';

class ProgressWidget extends StatefulWidget {

  const ProgressWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}

class _ProgressWidgetState extends State<ProgressWidget> {
  double progressValue = 0;


  @override
  void initState() {
    super.initState();
    // Simulate progress increase over time
    simulateProgress();
  }

  void simulateProgress() {
    // Simulate increasing progress until 10000
    const int maxProgress = 10000;
    const Duration duration = Duration(milliseconds: 10);
    int step = 1;

    Future.delayed(duration, () {
      setState(() {
        progressValue += step;
        if (progressValue >= maxProgress) {
          progressValue = maxProgress.toDouble();
        } else {
          simulateProgress();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Progress: ${progressValue.toInt()} / 10000',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          LinearProgressIndicator(
            value: progressValue / 10000, // Normalizing the value to range between 0 and 1
            minHeight: 10,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ],
      ),
    );
  }
}