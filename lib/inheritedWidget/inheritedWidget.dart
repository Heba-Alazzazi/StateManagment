import 'package:flutter/material.dart';

import 'myCounter_provider.dart';
import 'secondPage.dart';

class InheritedWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter using Inherited Widget'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.forward),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Second()));
            },
          ),
        ],
      ),
      body: Center(
          child: StatefulBuilder(builder: (context, StateSetter setState) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   '${CounterProvider.of(context)}',
              //   style: Theme.of(context).textTheme.bodyLarge,
              // ),
              IconButton(
                  icon: const Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    setState(){
                     // CounterProvider.of(context).;
                    }
                  }),
            ]);
      })),
    );
  }
}
