import '/components/component_listing_full_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'listing_full_widget.dart' show ListingFullWidget;
import 'package:flutter/material.dart';

class ListingFullModel extends FlutterFlowModel<ListingFullWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for component_listing_full component.
  late ComponentListingFullModel componentListingFullModel;

  @override
  void initState(BuildContext context) {
    componentListingFullModel =
        createModel(context, () => ComponentListingFullModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    componentListingFullModel.dispose();
  }
}
