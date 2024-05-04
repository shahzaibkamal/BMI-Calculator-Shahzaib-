import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesomeIcons

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BMI Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeatContainerCode(
                    color: const Color(0xFF1D1E33), // Corrected parameter name
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.male,
                          color: Colors.white, // Ensure icon appears in white
                          size: 80.0,
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white, // Ensure text appears in white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    color: const Color(0xFF1D1E33),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.female,
                          color: Colors.white, // Ensure icon appears in white
                          size: 80.0,
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white, // Ensure text appears in white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RepeatContainerCode(
              color: const Color(0xFF1D1E33),
              cardWidget: const Center(
                child: Text(
                  "HEIGHT",
                  style: TextStyle(
                    color: Colors.white, // Ensuring text appears in white
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeatContainerCode(
                    color: const Color(0xFF1D1E33),
                    cardWidget: Text(
                      "                        WEIGHT",
                      style: TextStyle(
                        height: 15.0,
                        color: Colors.white, // Ensuring text appears in white
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    color: const Color(0xFF1D1E33),
                    cardWidget: Text(
                      "                          AGE",
                      style: TextStyle(
                        height: 15.0,
                        color: Colors.white, // Ensuring text appears in white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  const RepeatContainerCode({
    super.key,
    required this.color,
    this.cardWidget = const SizedBox(),
  });

  final Color color;
  final Widget cardWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: cardWidget, // Ensuring the widget is not null
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
