import 'package:flutter/material.dart';
import 'package:persistent_bottom/views/page1.dart';

class TabPage1 extends StatelessWidget {
  const TabPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab 1'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tab 1'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Page1('Tab1'),
                  ),
                );
              },
              child: const Text('Go to page1'),
            )
          ],
        ),
      ),
    );
  }
}
