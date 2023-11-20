import 'package:flutter/material.dart';
import 'package:persistent_bottom/views/page2.dart';

class Page1 extends StatelessWidget {
  final String inTab;

  const Page1(this.inTab, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('in $inTab Page 1'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page2(inTab),
                  ),
                );
              },
              child: const Text('Go to page2'),
            )
          ],
        ),
      ),
    );
  }
}
