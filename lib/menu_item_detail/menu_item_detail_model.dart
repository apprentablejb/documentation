import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'menu_item_detail_widget.dart' show MenuItemDetailWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuItemDetailModel extends FlutterFlowModel<MenuItemDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for specialinstroductions widget.
  FocusNode? specialinstroductionsFocusNode;
  TextEditingController? specialinstroductionsController;
  String? Function(BuildContext, String?)?
      specialinstroductionsControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    specialinstroductionsFocusNode?.dispose();
    specialinstroductionsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
