import 'package:flutter/material.dart';
import 'package:persistent_bottom/views/page3.dart';

class Page2 extends StatelessWidget {
  final String inTab;

  const Page2(this.inTab, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('in $inTab Page 2'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page3(inTab),
                  ),
                );
              },
              child: const Text(
                'Go to page3',
              ),
            )
          ],
        ),
      ),
    );
  }
}
