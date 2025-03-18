import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.greenAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/view3.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.camera_alt,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              "Faiza Dilbar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'DancingScript',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 15),

            // Phone Number Container
            Container(
              width: 1000,
              height: 100,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.call,
                    size: 40,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "+9254767779",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Email Container
            Container(
              width: 1000,
              height: 100,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.email,
                    size: 40,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "faizadilbar41@gmail.com",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
