import '/flutter_flow/flutter_flow_util.dart';
import 'preview_single_session_widget.dart' show PreviewSingleSessionWidget;
import 'package:flutter/material.dart';

class PreviewSingleSessionModel
    extends FlutterFlowModel<PreviewSingleSessionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
