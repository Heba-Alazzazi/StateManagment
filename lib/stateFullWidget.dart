import 'package:flutter/material.dart';

class StateFullExample extends StatefulWidget {
  @override
  State<StateFullExample> createState() => _StateFullExampleState();
}

class _StateFullExampleState extends State<StateFullExample> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: myWidget(context),
      ),
    );
  }

  Widget myWidget(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.remove,
                size: 50,
                color: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 30),
            ),
            IconButton(
              icon: const Icon(
                Icons.add,
                size: 50,
                color: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
          ],
      
      
    );
  }
}