import 'package:flutter/material.dart';
import 'package:introduction_state_managment/inheritedWidget/myCounter_provider.dart';
import 'package:introduction_state_managment/providerStateManagment/ChangeNotifier/approach1.dart';
import 'package:introduction_state_managment/providerStateManagment/Provider/consumer.dart';
import 'package:introduction_state_managment/providerStateManagment/Provider/context.dart';
import 'package:introduction_state_managment/providerStateManagment/Provider/myModel.dart';
import 'package:introduction_state_managment/providerStateManagment/Provider/providerOf.dart';
import 'package:introduction_state_managment/stateFullBulider.dart';
import 'package:provider/provider.dart';

import 'inheritedWidget/inheritedWidget.dart';
import 'providerStateManagment/ChangeNotifier/approach3.dart';
import 'providerStateManagment/ChangeNotifier/myProvider.dart';

void main() {
  runApp(MyApp());
}
//When use the change notifier provider & in my provider extend from ChangeNotifier
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
      child: MaterialApp(
        title: 'Material App',
        home: ProviderApproach3(),
      ),
    );
  }
}
//When use Provider && in my model without any extend
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Provider<MyModel>(
//       create: (context) => MyModel(),
//       child: MaterialApp(
//         title: 'Material App',
//         home: ProviderOf(),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CounterProvider(
//         child: MaterialApp(
//       home: InheritedWidgetExample(),
//     ));
//   }
// }
