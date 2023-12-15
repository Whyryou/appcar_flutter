import 'dart:developer';

import 'package:dio/dio.dart';

import '../index.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'data_renting_widget.dart' show DataRentingWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DataRentingModel extends FlutterFlowModel<DataRentingWidget> {
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

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.
  Future<String> cancelReserv() async {
    log('userID:$userID');
    var formData = FormData.fromMap({
      'userID': userID,
      'rentID': carData['rentID'],
    });
    var response = await dio.post(
      '$HOST_NAME/$HOST_URI/cancelReserv.php',
      data: formData,
    );
    log('ret:${response.data.toString()}');
    return response.data.toString().toUpperCase();
  }

  /// Additional helper methods are added here.
}
