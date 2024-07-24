import '/backend/schema/enums/enums.dart';
import '/components/listing_to_buy/listing_to_buy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_listings_widget.dart' show MyListingsWidget;
import 'package:flutter/material.dart';

class MyListingsModel extends FlutterFlowModel<MyListingsWidget> {
  ///  Local state fields for this page.

  PropertyTypeRentListingType? propertyTypeRentListingType =
      PropertyTypeRentListingType.none;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    listingToBuyModel1.dispose();
    listingToBuyModel2.dispose();
    listingToBuyModel3.dispose();
  }
}
