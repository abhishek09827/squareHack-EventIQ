import '/flutter_flow/flutter_flow_util.dart';
import 'event_desc_widget.dart' show EventDescWidget;
import 'package:flutter/material.dart';

class EventDescModel extends FlutterFlowModel<EventDescWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
