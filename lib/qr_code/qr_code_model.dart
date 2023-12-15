import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

import '../index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'qr_code_widget.dart' show QrCodeWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QrCodeModel extends FlutterFlowModel<QrCodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var formatter = NumberFormat('#,##,##0');

  /// Initialization and disposal methods.
  late XFile file1;

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.
  Future<String> paySlip() async {
    log('userID:$userID');
    var formData = FormData.fromMap({
      'rentID': rentID,
      'file1': await MultipartFile.fromFile(file1.path, filename: file1.name),
    });
    var response = await dio.post(
      '$HOST_NAME/$HOST_URI/payslip.php',
      data: formData,
    );
    log('ret:${response.data.toString()}');
    return response.data.toString().toUpperCase();
  }

  /// Additional helper methods are added here.
}
