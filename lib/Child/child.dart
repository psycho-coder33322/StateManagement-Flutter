import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider_notify_listener/Model/model.dart';

class ChildOfNotifierProviderThatOnlyReadsNotListens extends StatefulWidget {
  @override
  _ChildOfNotifierProviderThatOnlyReadsNotListensState createState() => _ChildOfNotifierProviderThatOnlyReadsNotListensState();
}

class _ChildOfNotifierProviderThatOnlyReadsNotListensState extends State<ChildOfNotifierProviderThatOnlyReadsNotListens> {
  var UsingOf;
  var WillNotRebuildBecauseUsingARead;
  @override
  void initState() {
    super.initState();
    // and will not re build the widget
    // ignore: non_constant_identifier_names
     WillNotRebuildBecauseUsingARead = context.read<
        Model>(); // context.read<T>() => returns T without Listening to it
    // and is also equivalent to Provider.of<T>(context, listen:false)
    // ignore: non_constant_identifier_names
   //  UsingOf = Provider.of(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('context.read<Model>() => ${WillNotRebuildBecauseUsingARead.cost} and Provider.of(context, listen: false) => UsingOf'),
    );
  }
}