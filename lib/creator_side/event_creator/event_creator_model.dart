import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_creator_widget.dart' show EventCreatorWidget;
import 'package:flutter/material.dart';

class EventCreatorModel extends FlutterFlowModel<EventCreatorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (geminiCall)] action in Icon widget.
  ApiCallResponse? apiResultw02;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
