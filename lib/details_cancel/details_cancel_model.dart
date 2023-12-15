import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'details_cancel_widget.dart' show DetailsCancelWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailsCancelModel extends FlutterFlowModel<DetailsCancelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  int datediff = 0;
  int price = 0;
  int sum = 0;
  int payed = 0;
  int remain = 0;
  int earnest = 1000; //มัดจำ
  DateTime? datetime1;
  DateTime? datetime2;
  Map<String, dynamic> carData = {};

  var formatter = NumberFormat('#,##,##0');

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
