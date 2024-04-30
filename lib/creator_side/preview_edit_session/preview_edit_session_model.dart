import '/flutter_flow/flutter_flow_util.dart';
import 'preview_edit_session_widget.dart' show PreviewEditSessionWidget;
import 'package:flutter/material.dart';

class PreviewEditSessionModel
    extends FlutterFlowModel<PreviewEditSessionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
