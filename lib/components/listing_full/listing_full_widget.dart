import '/components/component_listing_full_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'listing_full_model.dart';
export 'listing_full_model.dart';

class ListingFullWidget extends StatefulWidget {
  const ListingFullWidget({super.key});

  @override
  State<ListingFullWidget> createState() => _ListingFullWidgetState();
}

class _ListingFullWidgetState extends State<ListingFullWidget> {
  late ListingFullModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListingFullModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.componentListingFullModel,
            updateCallback: () => setState(() {}),
            child: const ComponentListingFullWidget(),
          ),
        ),
      ),
    );
  }
}
