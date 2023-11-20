import 'package:flutter/material.dart';
import 'package:persistent_bottom/views/page2.dart';

class TabPage3 extends StatelessWidget {
  const TabPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tab 3')),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tab 3'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Page2('tab3'),
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
