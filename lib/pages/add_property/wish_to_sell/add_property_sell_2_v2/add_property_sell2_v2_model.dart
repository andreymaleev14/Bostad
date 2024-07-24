import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_property_sell2_v2_widget.dart' show AddPropertySell2V2Widget;
import 'package:flutter/material.dart';

class AddPropertySell2V2Model
    extends FlutterFlowModel<AddPropertySell2V2Widget> {
  ///  Local state fields for this page.

  PropertyTypeSellSelection? whenToSell = PropertyTypeSellSelection.none;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
