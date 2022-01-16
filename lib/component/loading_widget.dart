import 'package:flutter/material.dart';

class LoadingWidgets extends StatelessWidget {
  const LoadingWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                const Text('Loading..'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
