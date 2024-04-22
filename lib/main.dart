import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var count = 0.obs;
  // final count = Rx<int>(0);
  // final count = RxInt(0);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Obx Example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "$count",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                count++;
              },
              child: const Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
