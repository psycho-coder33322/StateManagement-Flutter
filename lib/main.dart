import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_notify_listener/Model/model.dart';

import 'Child/child.dart';
import 'Child/childThatListens.dart';
import 'Child/consumerChild.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: ParentWidgetProvider(),
    ),
  ));
}

class ParentWidgetProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChangeNotifierProvider(
        // Top level Provider 
        create: (_) => Model(404),
        child: Column(
          children: [
            Expanded(child: ChildOfNotifierProviderThatOnlyReadsNotListens()),
            Expanded(child: ChildOfNotifierProviderThatListensToChanges()),
            Expanded(child: ConsumerWidgetAlternativeForOthers()),
          ],
        ),
      ),
    );
  }
}
