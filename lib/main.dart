import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  List<String> days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  List<String> words = [
    'Motivated',
    'Thankful',
    'Wonderful',
    'Thoughtful',
    'Focused',
    'Strong',
    'Successful'
  ];

  void nextDay() {
    setState(() {
      if (number < 6) {
        number++;
      }
    });
  }

  void resetDay() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Word of the Day'),
        ),
        body: Center(
          child: Container(
            width: 280,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  days[number],
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  words[number],
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                     Text(days[number]),
                     Text(words[number]),
                  ]
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: nextDay,
                  child: const Text('Next Day'),
                ),
                ElevatedButton(
                  onPressed: resetDay,
                  child: const Text('Reset Day'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}