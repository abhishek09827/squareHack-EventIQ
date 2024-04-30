import '/flutter_flow/flutter_flow_util.dart';
import 'profile_fan_view_widget.dart' show ProfileFanViewWidget;
import 'package:flutter/material.dart';

class ProfileFanViewModel extends FlutterFlowModel<ProfileFanViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
