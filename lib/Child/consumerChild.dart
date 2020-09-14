import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_notify_listener/Model/model.dart';

class ConsumerWidgetAlternativeForOthers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<Model>(
        // Listenes for changes in Model
        builder: (context, model, child) {
          return Column(children: [Text('${model.cost}'), child]);
        },
        child: HeavyWidget(),
      ),
    );
  }
}

class HeavyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: () {
      context.read<Model>().changeModel(300);
    },
    child: Text('Change '),);
  }
}
