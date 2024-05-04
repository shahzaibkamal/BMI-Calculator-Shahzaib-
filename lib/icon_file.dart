import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importing FontAwesomeIcons
import  'icon_file.dart';
import 'Container_file.dart';
import 'main.dart';
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