import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider_notify_listener/Model/model.dart';

class ChildOfNotifierProviderThatListensToChanges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // ignore: non_constant_identifier_names
   var ValueChanges = context.watch<Model>(); // rebuilds the widget as the value changes
    // ignore: non_constant_identifier_names
  //  var ShouldTheValueChange = Provider.of(context, listen: true);
    return Container(
       child: Column(
         children: [
           Text(
             '${ValueChanges.cost} and ShouldTheValueChange',
             style: TextStyle(fontSize: 20),
           ),// ignore: non_constant_identifier_names
           TestForChange()
         ],
       ),
      
    );
  }
}
class TestForChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
   var ValueChanges = context.watch<Model>();
    return Container(
     child: Text('${ValueChanges.cost}')
    );
  }
}