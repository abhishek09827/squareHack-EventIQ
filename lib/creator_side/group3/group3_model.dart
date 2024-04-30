import '/flutter_flow/flutter_flow_util.dart';
import 'group3_widget.dart' show Group3Widget;
import 'package:flutter/material.dart';

class Group3Model extends FlutterFlowModel<Group3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
