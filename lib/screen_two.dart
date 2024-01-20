import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome'),
          // automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text('Welcome to Screen Two'),
          ],
        ),
      ),
    );
  }
}
