import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_property_rent_rent_out_swap_selection_widget.dart'
    show AddPropertyRentRentOutSwapSelectionWidget;
import 'package:flutter/material.dart';

class AddPropertyRentRentOutSwapSelectionModel
    extends FlutterFlowModel<AddPropertyRentRentOutSwapSelectionWidget> {
  ///  Local state fields for this page.

  PropertyTypeRentListingType? propertyTypeRentListingType =
      PropertyTypeRentListingType.none;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
