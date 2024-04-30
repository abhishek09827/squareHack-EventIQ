import '/flutter_flow/flutter_flow_util.dart';
import 'group2_widget.dart' show Group2Widget;
import 'package:flutter/material.dart';

class Group2Model extends FlutterFlowModel<Group2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
