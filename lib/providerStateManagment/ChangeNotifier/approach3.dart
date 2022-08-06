import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'myProvider.dart';

class ProviderApproach3 extends StatelessWidget {
  const ProviderApproach3({Key? key}) : super(key: key);

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
            Text(
              //'${context.read<MyProvider>().counter}', the text not change listen = false
              '${context.watch<MyProvider>().counter}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            // Consumer(
            //   builder: ((context, value, child) => Text(
            //     '${value.toString()}',
            //     style: Theme.of(context).textTheme.bodyLarge,
            //   )),
            // ),
            IconButton(
                icon: const Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.blue,
                ),
                onPressed: () {
                  context.read<MyProvider>().increment();
                }),
            IconButton(
                icon: const Icon(
                  Icons.short_text,
                  size: 50,
                  color: Colors.blue,
                ),
                onPressed: () {
                  context.read<MyProvider>().deccrement();
                }),
          ],
        ),
      ),
    );
  }
}
