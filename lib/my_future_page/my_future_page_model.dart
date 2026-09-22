import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_future_page_widget.dart' show MyFuturePageWidget;
import 'package:flutter/material.dart';

class MyFuturePageModel extends FlutterFlowModel<MyFuturePageWidget> {
  ///  Local state fields for this page.

  String selectedAppearanceMode = 'dark';

  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
