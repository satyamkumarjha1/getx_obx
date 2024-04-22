import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_obx/movie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //var count = 0.obs;
  // final count = Rx<int>(0);
  // final count = RxInt(0);

  var movie = Movie(name: 'Wanted', ticket: 100).obs;

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
                "${movie.value.name} ",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                movie.value.name = 'satyam';
                movie.refresh();
                print(movie.value.name);
              },
              child: const Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
