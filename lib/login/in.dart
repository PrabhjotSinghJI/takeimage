import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../takeimages.dart';

class In extends StatefulWidget {
  const In({super.key});

  @override
  State<In> createState() => _InState();
}

class _InState extends State<In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SlidingUpPanel(
        panel: _panel(),
        body: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TakeImage(),
                  ));
            },
            child: const Text('')),
      ),
    );
  }

  _panel() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'welcome',
              style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontStyle: FontStyle.italic,
                  fontSize: 22),
            ),
          ],
        ),
      ],
    );
  }
}
