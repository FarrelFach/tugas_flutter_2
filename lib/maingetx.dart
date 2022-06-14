import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(
      title: 'Tugas MP Farrel Fachrezaqy - 20200120067 TI-IS 1/4',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    ));

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller c = Get.put(Controller());

    return Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: const Text('Home Screen')),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Jumlah berapa kali tombol ditekan:',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromARGB(255, 14, 63, 1)),
              ),
              const SizedBox(height: 10),
              Obx(() => Text(
                    "${c.count}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 40),
                  )),
              const SizedBox(height: 10),
              const Text(
                'Silahkan pilih halaman di bawah ini::',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromARGB(255, 14, 63, 1)),
              ),
              const SizedBox(height: 10),
              ButtonBar(alignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    child: const Text("1"),
                    onPressed: () => Get.to(hal1())),
                const SizedBox(height: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    child: const Text("2"),
                    onPressed: () => Get.to(hal2())),
                const SizedBox(height: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    child: const Text("3"),
                    onPressed: () => Get.to(hal3())),
              ]),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: c.increment,
          tooltip: 'Ini tombol',
        ));
  }
}

class hal1 extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
        appBar: AppBar(title: const Text("Screen 1")),
        body: Center(
            child: Text(
          "${c.count}",
          style: const TextStyle(fontSize: 50, color: Colors.blueGrey),
        )));
  }
}

class hal2 extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
        appBar: AppBar(title: const Text("Screen 2")),
        body: Center(
            child: Text(
          "${c.count}",
          style: const TextStyle(fontSize: 50, color: Colors.blueGrey),
        )));
  }
}

class hal3 extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
        appBar: AppBar(title: const Text("Screen 3")),
        body: Center(
            child: Text(
          "${c.count}",
          style: const TextStyle(fontSize: 50, color: Colors.blueGrey),
        )));
  }
}
