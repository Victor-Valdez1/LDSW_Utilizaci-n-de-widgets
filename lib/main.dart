import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome to Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello Worlds',
              style: TextStyle(
                fontSize: 40, 
                fontWeight: FontWeight.bold,  
              ),
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Row: Item 1"),
                SizedBox(width: 10),
                Text("Item 2"),
                SizedBox(width: 10),
                Text("Item 3"),
              ],
            ),
            const SizedBox(height: 20), 
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Column: Item A"),
                SizedBox(height: 10), 
                Text("Item B"),
                SizedBox(height: 10),
                Text("Item C"),
              ],
            ),
            const SizedBox(height: 20), 
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue.shade100,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue.shade300,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue.shade500,
                ),
                const Text(
                  'Stacked Text',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}
