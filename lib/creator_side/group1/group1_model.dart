import '/flutter_flow/flutter_flow_util.dart';
import 'group1_widget.dart' show Group1Widget;
import 'package:flutter/material.dart';

class Group1Model extends FlutterFlowModel<Group1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
