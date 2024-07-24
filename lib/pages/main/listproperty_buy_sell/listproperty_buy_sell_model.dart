import '/components/listing_to_buy/listing_to_buy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'listproperty_buy_sell_widget.dart' show ListpropertyBuySellWidget;
import 'package:flutter/material.dart';

class ListpropertyBuySellModel
    extends FlutterFlowModel<ListpropertyBuySellWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for listing_to_buy component.
  late ListingToBuyModel listingToBuyModel1;
  // Model for listing_to_buy component.
  late ListingToBuyModel listingToBuyModel2;
  // Model for listing_to_buy component.
  late ListingToBuyModel listingToBuyModel3;

  @override
  void initState(BuildContext context) {
    listingToBuyModel1 = createModel(context, () => ListingToBuyModel());
    listingToBuyModel2 = createModel(context, () => ListingToBuyModel());
    listingToBuyModel3 = createModel(context, () => ListingToBuyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    listingToBuyModel1.dispose();
    listingToBuyModel2.dispose();
    listingToBuyModel3.dispose();
  }
}
