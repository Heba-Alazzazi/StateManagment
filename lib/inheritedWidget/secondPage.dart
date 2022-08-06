import 'package:flutter/material.dart';

import 'myCounter_provider.dart';

class Second extends StatefulWidget {
  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    var myprovider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter using Inherited Widget'),
      ),
      body: Center(
        child: 
Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${myprovider?.child}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      
                       // myprovider?.counter ++;
                      
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.remove,
                    size: 50,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                     // myprovider.counter--;
                    });
                  },
                )
              ],
            ),
          
        
      ),
    );
  }
}