import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_property_init_widget.dart' show AddPropertyInitWidget;
import 'package:flutter/material.dart';

class AddPropertyInitModel extends FlutterFlowModel<AddPropertyInitWidget> {
  ///  Local state fields for this page.

  InitButtons? pInitBuySellRent = InitButtons.none;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
