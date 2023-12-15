import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import '../index.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'data_check_widget.dart' show DataCheckWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DataCheckModel extends FlutterFlowModel<DataCheckWidget> {
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
  int datediff = 0;
  int price = 0;
  int sum = 0;
  int earnest = 1000; //มัดจำ
  late XFile file1;
  late XFile file2;
  Map<String, dynamic> carData = {};

  var formatter = NumberFormat('#,##,##0');

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
  }

  /// Action blocks are added here.
  Future<String> reservation() async {
    log('userID:$userID');
    var formData = FormData.fromMap({
      'type': 1, //ชำระเต็ม
      'userID': userID,
      'carID': carData['id'],
      'position1': position1,
      'position2': position2,
      'date1': datetime1,
      'date2': datetime2,
      'user_name': textController1.text,
      'user_idcard': textController2.text,
      'user_license': textController3.text,
      'user_tel': textController4.text,
      'user_email': textController5.text,
      'user_line': textController6.text,
      'file1': await MultipartFile.fromFile(file1.path, filename: file1.name),
      'file2': await MultipartFile.fromFile(file2.path, filename: file2.name),
    });
    var response = await dio.post(
      '$HOST_NAME/$HOST_URI/reserv.php',
      data: formData,
    );
    log('ret:${response.data.toString()}');
    return response.data.toString().toUpperCase();
  }

  /// Additional helper methods are added here.
}
