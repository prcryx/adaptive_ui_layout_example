import 'package:flutter/material.dart';
import 'package:adaptive_ui_layout/flutter_responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      builder: (context, child) => ResponsiveLayout(builder: (context) {
        return child!;
      }),
      home: const MyHomePage(title: 'Flutter Responsive Layout'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 115,
              width: 115,
            ),
            20.hs,
            Container(
              color: Colors.orange,
              height: 115.h,
              width: 115.w,
            ),
            20.hs,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "16lp",
                  style: TextStyle(fontSize: 16),
                ),
                20.ws,
                Text(
                  "16sp",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
