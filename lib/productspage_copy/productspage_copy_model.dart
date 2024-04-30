import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'productspage_copy_widget.dart' show ProductspageCopyWidget;
import 'package:flutter/material.dart';

class ProductspageCopyModel extends FlutterFlowModel<ProductspageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API ( Orders)] action in IconButton widget.
  ApiCallResponse? apiResultudt;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
