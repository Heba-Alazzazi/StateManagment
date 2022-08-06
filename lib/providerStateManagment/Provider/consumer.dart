import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'myModel.dart';

class ProviderConsumer extends StatelessWidget {
  const ProviderConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter using Inherited Widget'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.forward),
            onPressed: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => Second()));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<MyModel>(
              builder: ((context, value, child) {
                return Text(
                  '${value.counter}',
                  style: Theme.of(context).textTheme.bodyLarge,
                );
              }),
            ),
            Consumer<MyModel>(builder: ((context, value, child) {
              return Column(
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.add,
                        size: 50,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        value.increment();
                      }),

                      IconButton(
                      icon: const Icon(
                        Icons.star,
                        size: 50,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        value.deccrement();
                      }),
                ],
              );
            })),
          ],
        ),
      ),
    );
  }
}
