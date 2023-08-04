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
                    builder: (context) => TakeImage(),
                  ));
            },
            child: const Text('Next')),
      ),
    );
  }

  _panel() {
    return const Center(
      child: Row(
        children: [
          Text('abc'),
        ],
      ),
    );
  }
}
