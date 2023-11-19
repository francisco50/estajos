import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = 'Estajos';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(8, (index) {
            return Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 250,
                width: 250,
                color: Colors.teal[100],
                child: IconButton(
                  icon: const Icon(Icons.food_bank),
                  color: Colors.blue,
                  iconSize: 150.0,
                  onPressed: (){},
                ),
              ),
              /*child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headlineSmall,
              ),*/
            );
          }),

        ),
      ),
    );
  }
}



