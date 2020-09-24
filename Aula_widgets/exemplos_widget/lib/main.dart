import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula class",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AULA"),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Text("Item1"),
              Divider(),
              Text("Item2"),
            ],
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Card(
                color: Colors.deepPurple,
                shape:
                    RoundedRectangleBorder(  : BorderRadius.circular(15)),
                child: Column(children: [
                  Divider(),
                  MyFruts("Laranja"),
                  Divider(),
                  MyFruts("Melancia"),
                  Divider(),
                  MyFruts("Laranja"),
                  Divider(),
                 Counter("time")
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyFruts extends StatelessWidget {
  final String texto;
  const MyFruts(this.texto);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DecoratedBox(
      decoration:BoxDecoration(color: Colors.red),
      child: Text(
        texto,
        style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  final String time;
  Counter(this.time);
  @override
  _CounterState createState() => _CounterState();
}


class _CounterState extends State<Counter> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          count++;
        });
      },
      child: MyFruts('$count')
    );
  }
}
