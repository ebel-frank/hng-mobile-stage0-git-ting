import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Git-ting Started'),
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to Frank Ebeledike\'s HNG MOBILE-DESKTOP STAGE 0 TASK',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(onPressed: () {
                _launchUrl("https://github.com/ebel-frank/hng-mobile-stage0-git-ting");
              }, child: Text("Go to my Github Repo")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {
                _launchUrl("https://hng.tech/hire/flutter-developers");
              }, child: Text("Hire Flutter Developers")),
              SizedBox(height: 40),
              ElevatedButton(onPressed: () {
                _launchUrl("https://telex.im/");
              }, child: Text("Go to Telex")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {
                _launchUrl("https://delve.fun/");
              }, child: Text("Go to Delve")),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri url0 = Uri.parse(url);
    if (!await launchUrl(url0)) {
      throw Exception('Could not launch $url0');
    }
  }
}
