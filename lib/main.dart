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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Praktikum 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
          // title: Text(
          //   'Login Screen',
          //   style: TextStyle(color: Colors.white),
          // ),
          // backgroundColor: Color.fromRGBO(8, 8, 8, 1),
          ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 30.0),
              child: Center(
                  child: Container(
                height: 300,
                width: 400,
                // decoration: BoxDecoration(color: Colors.red),
                child: Image.asset('assets/6333040.jpg'),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20.0, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20.0, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Password'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(320, 50)),
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 0),
              child: Text(
                'Forgot Password ?',
                style: TextStyle(color: Colors.orange),
              ),
            )
          ],
        ),
      ),
    );
  }
}
