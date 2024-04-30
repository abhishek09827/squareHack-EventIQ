import '/flutter_flow/flutter_flow_util.dart';
import 'meeting_confirmed_widget.dart' show MeetingConfirmedWidget;
import 'package:flutter/material.dart';

class MeetingConfirmedModel extends FlutterFlowModel<MeetingConfirmedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
