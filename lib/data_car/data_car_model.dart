import 'dart:developer';

import '../index.dart';

import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'data_car_widget.dart' show DataCarWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DataCarModel extends FlutterFlowModel<DataCarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  String? position1;
  String? position2;
  String? type;
  String? brand;
  String? date1;
  String? date2;
  DateTime? datetime1;
  DateTime? datetime2;
  Map<String, dynamic> carData = {};

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.
  Future apiGetCarID(String ID) async {
    var response = await dio.get('$HOST_NAME/$HOST_URI/getCarID.php?ID=$ID');
    log(response.data);
    carData = jsonDecode(response.data);
  }

  /// Additional helper methods are added here.
}
