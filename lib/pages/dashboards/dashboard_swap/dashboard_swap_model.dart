import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_swap_widget.dart' show DashboardSwapWidget;
import 'package:flutter/material.dart';

class DashboardSwapModel extends FlutterFlowModel<DashboardSwapWidget> {
  ///  Local state fields for this page.

  OwnerDashboardSellPriceEstimate? priceEstmate =
      OwnerDashboardSellPriceEstimate.our;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}