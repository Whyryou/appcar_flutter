import 'dart:developer';

import '../index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'history_widget.dart' show HistoryWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoryModel extends FlutterFlowModel<HistoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  List<dynamic> carList = List.empty();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.
  Future apiGetReservList() async {
    var response = await dio
        .get('$HOST_NAME/$HOST_URI/getReservList.php?type=1&userID=$userID');
    log(response.data);
    carList = jsonDecode(response.data);
  }

  /// Additional helper methods are added here.
}
