import '/flutter_flow/flutter_flow_util.dart';
import 'cust_groups_widget.dart' show CustGroupsWidget;
import 'package:flutter/material.dart';

class CustGroupsModel extends FlutterFlowModel<CustGroupsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
