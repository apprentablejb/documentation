import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  Local state fields for this page.

  List<String> restaurantFilter = [];
  void addToRestaurantFilter(String item) => restaurantFilter.add(item);
  void removeFromRestaurantFilter(String item) => restaurantFilter.remove(item);
  void removeAtIndexFromRestaurantFilter(int index) =>
      restaurantFilter.removeAt(index);
  void insertAtIndexInRestaurantFilter(int index, String item) =>
      restaurantFilter.insert(index, item);
  void updateRestaurantFilterAtIndex(int index, Function(String) updateFn) =>
      restaurantFilter[index] = updateFn(restaurantFilter[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputSearch widget.
  FocusNode? inputSearchFocusNode;
  TextEditingController? inputSearchController;
  String? Function(BuildContext, String?)? inputSearchControllerValidator;
  List<RestaurantsRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputSearchFocusNode?.dispose();
    inputSearchController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
