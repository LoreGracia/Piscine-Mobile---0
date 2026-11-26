import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color(0xffbb86fc),
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'ex00'),
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
  // String str0 = 'This button won\'t write on debug console';
  // String str1 = 'Hello World';
  // bool change = false;
  // void null() {
  //   setState(() {
  //     change = !change;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Calculator')),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            ElevatedButton(
              onPressed: null,
              child: const Text('0'), //const Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('1'), //const Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('2'), //const Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('3'), //const Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('4'), //const Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('5'), //const Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('6'), //const Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('7'), //const Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('8'), //const Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('9'), //const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
