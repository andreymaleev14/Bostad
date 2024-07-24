import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_property_sell3_v2_widget.dart' show AddPropertySell3V2Widget;
import 'package:flutter/material.dart';

class AddPropertySell3V2Model
    extends FlutterFlowModel<AddPropertySell3V2Widget> {
  ///  Local state fields for this page.

  PropertyTypeSellSelection? whenToSell = PropertyTypeSellSelection.none;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
