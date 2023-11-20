import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  final String inTab;

  const Page3(this.inTab, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('in $inTab Page 3'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Go back'),
            )
          ],
        ),
      ),
    );
  }
}
