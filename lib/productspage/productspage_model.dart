import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'productspage_widget.dart' show ProductspageWidget;
import 'package:flutter/material.dart';

class ProductspageModel extends FlutterFlowModel<ProductspageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API ( Orders)] action in Button widget.
  ApiCallResponse? apiResultudt;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
