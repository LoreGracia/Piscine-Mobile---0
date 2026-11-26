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
  String str0 = 'This button won\'t write on debug console';
  String str1 = 'Hello World';
  bool change = false;
  void _changeText() {
    setState(() {
      change = !change;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(change ? str0 : str1),
            ElevatedButton(
              onPressed: _changeText,
              child: const Text('Press'), //const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
